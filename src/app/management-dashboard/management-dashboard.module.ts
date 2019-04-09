import {NgModule} from "@angular/core";
import {HomeDashboardComponent} from './home-dashboard/home-dashboard.component';
import {NavigationBarComponent} from './shared/navigation-bar/navigation-bar.component';
import { FooterDashboardComponent } from './shared/footer-dashboard/footer-dashboard.component';
import {CommonModule} from '@angular/common';
import { AccommodationListComponent } from './home-dashboard/accommodation/accommodation-list/accommodation-list.component';
import { AccommodationDetailsComponent } from './home-dashboard/accommodation/accommodation-details/accommodation-details.component';
import {RouterModule} from '@angular/router';
import { SideBarComponent } from './home-dashboard/side-bar/side-bar.component';
import { BoardComponent } from './home-dashboard/board/board.component';
import { HeaderComponent } from './home-dashboard/accommodation/accommodation-details/header/header.component';
import { TabsComponent } from './home-dashboard/accommodation/accommodation-details/tabs/tabs.component';
import { AccommodationModalComponent } from './home-dashboard/accommodation/accommodation-details/accommodation-modal/accommodation-modal.component';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {NgSelectModule} from '@ng-select/ng-select';
import {PropertyInfoComponent} from './home-dashboard/accommodation/accommodation-details/tabs/property-info/property-info.component';
import { LanguagesComponent } from './home-dashboard/accommodation/accommodation-details/tabs/languages/languages.component';
import { CardsComponent } from './home-dashboard/accommodation/accommodation-details/tabs/cards/cards.component';
import { InternetComponent } from './home-dashboard/accommodation/accommodation-details/tabs/internet/internet.component';
import { AmenitiesComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities.component';
import { ParkingComponent } from './home-dashboard/accommodation/accommodation-details/tabs/parking/parking.component';
import { CancellationComponent } from './home-dashboard/accommodation/accommodation-details/tabs/cancellation/cancellation.component';
import { BreakfastComponent } from './home-dashboard/accommodation/accommodation-details/tabs/breakfast/breakfast.component';
import { PetComponent } from './home-dashboard/accommodation/accommodation-details/tabs/pet/pet.component';
import { AmenitiesActivitiesComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-activities/amenities-activities.component';
import {NgxEditorModule} from 'ngx-editor';
import { AccommodationSalesComponent } from './home-dashboard/accommodation/accommodation-sales/accommodation-sales.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {MatSortModule} from '@angular/material/sort';
import {MatTableModule} from '@angular/material/table';
import { DataTableComponent } from './home-dashboard/accommodation/accommodation-sales/data-table/data-table.component';
import {MatButtonModule, MatDialogModule, MatIconModule, MatInputModule, MatPaginatorModule, MatSelectModule, MatToolbarModule} from '@angular/material';
import { AmenitiesFoodDrinkComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-food-drink/amenities-food-drink.component';
import { AmenitiesPoolSpaComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-pool-spa/amenities-pool-spa.component';
import { AmenitiesTransportationComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-transportation/amenities-transportation.component';
import { AmenitiesFrontdeskComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-frontdesk/amenities-frontdesk.component';
import { AmenitiesCommonAreasComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-common-areas/amenities-common-areas.component';
import { AmenitiesEntertainmentComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-entertainment/amenities-entertainment.component';
import { AmenitiesCleaningServicesComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-cleaning-services/amenities-cleaning-services.component';
import { AmenitiesBusinessFacilitiesComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-business-facilities/amenities-business-facilities.component';
import { AmenitiesShopsComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-shops/amenities-shops.component';
import { AmenitiesMiscellaneousComponent } from './home-dashboard/accommodation/accommodation-details/amenities/amenities-miscellaneous/amenities-miscellaneous.component';
import { RoomsComponent } from './home-dashboard/accommodation/accommodation-details/rooms/rooms.component';
import {BrowserModule} from '@angular/platform-browser';
import { RoomTypeModalComponent } from './home-dashboard/accommodation/accommodation-details/rooms/room-type-modal/room-type-modal.component';
import { PricePeriodeComponent } from './home-dashboard/accommodation/accommodation-details/rooms/price-periode/price-periode.component';
import { DiscountsComponent } from './home-dashboard/accommodation/accommodation-details/discounts/discounts.component';
import { DiscountModalFormComponent } from './home-dashboard/accommodation/accommodation-details/discounts/discount-modal-form/discount-modal-form.component';
import {MatFormFieldModule} from '@angular/material/form-field';
import { ConfirmModalComponent } from './home-dashboard/accommodation/accommodation-details/rooms/confirm-modal/confirm-modal.component';
import { PricePeriodeModalComponent } from './home-dashboard/accommodation/accommodation-details/rooms/price-periode-modal/price-periode-modal.component';
import { SurroundingsComponent } from './home-dashboard/accommodation/accommodation-details/surroundings/surroundings.component';
import { RoomGalleryComponent } from './home-dashboard/accommodation/accommodation-details/rooms/room-gallery/room-gallery.component';
import { GalleryComponent } from './home-dashboard/accommodation/accommodation-details/gallery/gallery.component';
import { MaterialFileInputModule } from 'ngx-material-file-input';
import { AccommodationService } from './accommodation.service';



@NgModule({
    declarations: [
        HomeDashboardComponent,
        NavigationBarComponent,
        FooterDashboardComponent,
        AccommodationListComponent,
        AccommodationDetailsComponent,
        SideBarComponent,
        BoardComponent,
        HeaderComponent,
        TabsComponent,
        AccommodationModalComponent,
        PropertyInfoComponent,
        LanguagesComponent,
        CardsComponent,
        InternetComponent,
        ParkingComponent,
        CancellationComponent,
        BreakfastComponent,
        PetComponent,
        AmenitiesComponent,
        ParkingComponent,
        AccommodationSalesComponent,
        DataTableComponent,
        AmenitiesActivitiesComponent,
        AmenitiesFoodDrinkComponent,
        AmenitiesPoolSpaComponent,
        AmenitiesTransportationComponent,
        AmenitiesFrontdeskComponent,
        AmenitiesCommonAreasComponent,
        AmenitiesEntertainmentComponent,
        AmenitiesCleaningServicesComponent,
        AmenitiesBusinessFacilitiesComponent,
        AmenitiesShopsComponent,
        AmenitiesMiscellaneousComponent,
        RoomsComponent,
        RoomTypeModalComponent,
        PricePeriodeComponent,
        DiscountsComponent,
        DiscountModalFormComponent,
        ConfirmModalComponent,
        PricePeriodeModalComponent,
        SurroundingsComponent,
        RoomGalleryComponent,
        GalleryComponent,
       
       
      
    ],
    imports: [
        CommonModule,
        RouterModule,
        ReactiveFormsModule,
        FormsModule,
        NgSelectModule,
        NgxEditorModule,
        BrowserAnimationsModule,
        MatSortModule,
        MatTableModule,
        MatPaginatorModule,
        BrowserModule,
        MatDialogModule,
        MatFormFieldModule,
        MatIconModule,
        MatButtonModule,
        MatSelectModule,
        MatInputModule,
        MatToolbarModule,
        MatTableModule,
        MaterialFileInputModule,
       

    ],
    exports : [
        HomeDashboardComponent,
        NavigationBarComponent,
        FooterDashboardComponent
    ],
    entryComponents: [
        DiscountModalFormComponent, PricePeriodeModalComponent, ConfirmModalComponent
    ],
    providers: [AccommodationService]
})

export class ManagementDashboardModule {

}
