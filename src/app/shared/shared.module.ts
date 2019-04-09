import {NgModule} from "@angular/core";
import {HeaderComponent} from "./header/header.component";
import {FooterComponent} from "./footer/footer.component";
import {AuthModule} from "../auth/auth.module";
import {HTTP_INTERCEPTORS, HttpClientModule} from '@angular/common/http';
import {TokenInterceptor} from './TokenInterceptor';
import {CommonModule} from '@angular/common';
import {RouterModule} from '@angular/router';


@NgModule({
    declarations: [
        HeaderComponent,
        FooterComponent
    ],
    imports: [

        AuthModule,
        RouterModule,
        CommonModule
    ],
    exports : [
        HeaderComponent,
        FooterComponent
    ],
    providers: [
        {provide: HTTP_INTERCEPTORS, useClass: TokenInterceptor, multi: true},
    ]
})

export class SharedModule {

}