import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {Router} from '@angular/router';
import {AuthService} from '../auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  @ViewChild('btnClose') btnClose: ElementRef;
  loginForm: FormGroup;

  constructor(private route: Router, private authService: AuthService) {
      this.loginForm = new FormGroup({
          'mail' : new FormControl(null, [ Validators.required, Validators.email ]),
          'pass' : new FormControl(null, [ Validators.required ]),
      });
  }

  ngOnInit() {
  }

  login() {

      const login = {'username': this.loginForm.value.mail, 'password' : this.loginForm.value.pass};
      this.authService.handleLogin(login).subscribe(
          response => {
             localStorage.setItem('token', response['token']);
              this.btnClose.nativeElement.click();
              this.route.navigate(['/dashboard']);
          },
          err => console.log(err)
      );
  }

}
