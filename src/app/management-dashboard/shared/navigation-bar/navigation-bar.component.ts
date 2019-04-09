import { Component, OnInit } from '@angular/core';
import {AuthService} from '../../../auth/auth.service';

@Component({
  selector: 'app-navigation-bar',
  templateUrl: './navigation-bar.component.html',
  styleUrls: ['./navigation-bar.component.css']
})
export class NavigationBarComponent implements OnInit {

  account: any;

  constructor(private authService: AuthService) {
  }

  ngOnInit() {
      this.getLoggedAccount();
  }

  logout() {
    this.authService.logout();
  }

  getLoggedAccount() {
    this.authService.getLoggedAccount().subscribe(
        resp => {
            this.account = resp;
        },
        error => {
          console.log(error);
        }
    );
  }

}
