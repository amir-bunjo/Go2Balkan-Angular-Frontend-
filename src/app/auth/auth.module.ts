import {NgModule} from '@angular/core';

import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";
import {AuthRoutingModule} from './auth-routing.module';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {HttpClientModule} from "@angular/common/http";
import {CommonModule} from "@angular/common";


@NgModule({
  declarations: [
    LoginComponent,
    RegisterComponent

  ],
  imports: [
    AuthRoutingModule,
      ReactiveFormsModule,
      HttpClientModule,
    FormsModule,
      CommonModule

  ],
  exports: [
    LoginComponent,
    RegisterComponent
  ]
})
export class AuthModule {
}
