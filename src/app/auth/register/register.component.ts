import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import { debounceTime, map, take} from 'rxjs/operators';
import {Router} from '@angular/router';
import {AuthService} from '../auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  @ViewChild('btnClose') btnClose: ElementRef;
  registerForm: FormGroup;
  err: string;

  constructor(private route: Router, private authService: AuthService) {
    this.registerForm = new FormGroup({
      'name' : new FormControl(null, [Validators.required]),
      'mail' : new FormControl(null, [ Validators.required, Validators.email ], this.checkUser.bind(this)),
      'pass' : new FormControl(null, [ Validators.required ]),
      'confirm' : new FormControl(null, [ Validators.required ]),
    });
  }

  ngOnInit() {

  }

  checkUser(control: FormControl) {
    console.log(control.value);

    return this.authService.getAccountByUser(control.value).pipe(
        debounceTime(500),
        take(1),
        map( res =>  res ? {tribename : false}  : null),
    );

  }

  saveAccount() {
    const account = {
      accountType: 1,
      'contactName' : this.registerForm.value.name,
      'username': this.registerForm.value.mail,
      'password': this.registerForm.value.pass
    };

    this.authService.saveAccount(account).subscribe(
        res => {
          const login = {'username': this.registerForm.value.mail, 'password' : this.registerForm.value.pass};

          this.authService.handleLogin(login).subscribe(
              logres => {
                localStorage.setItem('token' , logres['token']);
                this.btnClose.nativeElement.click();
                this.route.navigate(['/dashboard']);
              },
              errlog => this.err = errlog
           );
        },
        err => this.err = err
    );
      console.log('register call');
      console.log(this.registerForm);
  }


}
