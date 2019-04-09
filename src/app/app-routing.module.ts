import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {HomeDashboardComponent} from './management-dashboard/home-dashboard/home-dashboard.component';
import {AuthGuardService} from './auth/auth-guard.service';
import {HomeComponent} from './home/home.component';
import {BoardComponent} from './management-dashboard/home-dashboard/board/board.component';
import {AccommodationDetailsComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-details/accommodation-details.component';
import {AmenitiesComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-details/amenities/amenities.component';
import {AccommodationSalesComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-sales/accommodation-sales.component';
import {RoomsComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-details/rooms/rooms.component';
import {DiscountsComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-details/discounts/discounts.component';
import {SurroundingsComponent} from './management-dashboard/home-dashboard/accommodation/accommodation-details/surroundings/surroundings.component';
import { RoomGalleryComponent } from './management-dashboard/home-dashboard/accommodation/accommodation-details/rooms/room-gallery/room-gallery.component';
import { GalleryComponent } from './management-dashboard/home-dashboard/accommodation/accommodation-details/gallery/gallery.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
    {path: 'dashboard', component: HomeDashboardComponent ,
      children: [
        {path: '', component: BoardComponent},
        {path: 'details/:id', component: AccommodationDetailsComponent},
        {path: 'amenities/:id', component: AmenitiesComponent},
        {path: 'discounts/:id' , component: DiscountsComponent},
        {path: 'surroundings/:id' , component: SurroundingsComponent},
        {path: 'rooms/:id', component: RoomsComponent},
        {path: 'rooms/gallery/:id/:rid', component: RoomGalleryComponent },

        {path: 'sales/:id', component: AccommodationSalesComponent},
        {path: 'gallery/:id', component: GalleryComponent}
      ]},
  {path: '', redirectTo: '/', pathMatch: 'full'},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
