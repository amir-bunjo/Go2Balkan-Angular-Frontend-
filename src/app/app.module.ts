import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {HomeComponent} from "./home/home.component";
import {SharedModule} from "./shared/shared.module";
import {AuthModule} from "./auth/auth.module";
import {AuthService} from "./auth/auth.service";
import {ManagementDashboardModule} from './management-dashboard/management-dashboard.module';
import {AccommodationService} from './management-dashboard/accommodation.service';

@NgModule({
  declarations: [
    AppComponent,
      HomeComponent
  ],
  imports: [
    BrowserModule.withServerTransition({appId: 'go2balkan-admin'}),
    AppRoutingModule,
      SharedModule,
      AuthModule,
      ManagementDashboardModule
  ],
  providers: [AuthService, AccommodationService],
  bootstrap: [AppComponent]
})
export class AppModule { }
