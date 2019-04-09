import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../../accommodation.service';

@Component({
    selector: 'app-amenities',
    templateUrl: './amenities.component.html',
    styleUrls: ['./amenities.component.css']
})
export class AmenitiesComponent implements OnInit {

    activitiesStatus = false;
    foodStatus = false;
    poolStatus = false;
    transportStatus = false;
    frondeskStatus = false;
    commonAreasStatus = false;
    enterStatus = false ;
    cleaningStatus = false;
    facilitiesStatus = false;
    shopStatus = false;
    miscellaneousStatus = false;


    id: any;
    accommodation: any;
    frontDeskService: any;
    commonAreas: any;
    enter: any;
    cleaning: any;
    activities: any;
    food: any;
    poolSpa: any;
    transporation: any;
    facilities: any;
    shop: any;
    miscellaneous: any;

    constructor(private router: Router, private accomService: AccommodationService, private route: ActivatedRoute) {
        this.id = this.route.snapshot.params['id'];
        this.accomService.fetchAccommodationByAccommodationId(this.id).subscribe(
            accdata => {
                this.accommodation = accdata , console.log(this.accommodation);
            },
            err => console.log(err)
        );
        console.log(this.id);
    }


    ngOnInit() {
        this.allActivities();
        this.allFrontDeskService();
        this.allCommonAreas();
        this.allEntertainment();
        this.allCleaning();
        this.allFoods();
        this.allSPAPool();
        this.allTransportation();
        this.allFacilities();
        this.allShop();
        this.allMiscellaneous();
    }

    getActivities() {
        this.activitiesStatus = true;
    }

    getFood() {
        this.foodStatus = true;
    }

    getPool() {
        this.poolStatus = true;
    }

    getTransport() {
        this.transportStatus = true;
    }

    getFrondesk() {
        this.frondeskStatus = true;
    }

    getCommonAreas() {
        this.commonAreasStatus = true;
    }

    getEnter() {
        this.enterStatus = true;
    }

    getClean() {
        this.cleaningStatus = true;
    }

    getFacilities() {
        this.facilitiesStatus = true;
    }

    getShop() {
        this.shopStatus = true;
    }

    getMiscellaneous() {
        this.miscellaneousStatus = true;
    }

    allFrontDeskService() {
        this.accomService.getAllFrontDeskService().subscribe(
            res => { this.frontDeskService = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allCommonAreas() {
        this.accomService.getAllCommonAreas().subscribe(
            res => { this.commonAreas = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allEntertainment() {
        this.accomService.getAllEntertainment().subscribe(
            res => { this.enter = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allCleaning() {
        this.accomService.getAllCleaning().subscribe(
            res => { this.cleaning = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allActivities() {
        this.accomService.getAllActivties().subscribe(
            res => { this.activities = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allFoods() {
        this.accomService.getAllFood().subscribe(
            res => { this.food = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allSPAPool() {
        this.accomService.getAllSPAPool().subscribe(
            res => { this.poolSpa = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allTransportation() {
        this.accomService.getAllTransportation().subscribe(
            res => { this.transporation = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allFacilities() {
        this.accomService.getAllFacilitiesn().subscribe(
            res => { this.facilities = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allShop() {
        this.accomService.getAllShops().subscribe(
            res => { this.shop = res ; console.log(res); },
            err => console.log(err)
        );
    }

    allMiscellaneous() {
        this.accomService.getAllMiscellaneous().subscribe(
            res => { this.miscellaneous = res ; console.log(res); },
            err => console.log(err)
        );
    }
}
