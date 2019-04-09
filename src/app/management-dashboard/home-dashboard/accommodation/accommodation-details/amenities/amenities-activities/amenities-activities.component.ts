import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../../../accommodation.service';

@Component({
    selector: 'app-amenities-activities',
    templateUrl: './amenities-activities.component.html',
    styleUrls: ['./amenities-activities.component.css']
})
export class AmenitiesActivitiesComponent implements OnInit {

    accommodationId: number;
    activityForm: FormGroup;
    @Input() activties;
    @Input('ActivityAccommodation') accommodation: any;


    constructor( private accomService: AccommodationService, private route: ActivatedRoute) { }

    ngOnInit() {

        this.activityForm = new FormGroup({});
        if ( this.accommodation.optionsActivities !== null &&  this.accommodation.optionsActivities !== '' ) {
            let frontjson = JSON.parse(this.accommodation.optionsActivities);
            console.log(frontjson);
            for( let f of this.activties) {
                let amenityName =f.activityName;
                if( frontjson[amenityName] == undefined) {
                    this.activityForm.addControl(amenityName , new FormControl(false));
                }else {
                    this.activityForm.addControl(amenityName , new FormControl(true));
                }

            }

        }else {
            for( let f of this.activties) {
                let amenityName =f.activityName;
                this.activityForm.addControl(amenityName , new FormControl(false));
            }

        }


        setTimeout(() => {
            this.formEvent();
        }, 1000);


    }



    formEvent() {
        this.activityForm.valueChanges.subscribe(
            form => {
                let switchForm = new FormGroup({});
                this.accommodationId = this.route.snapshot.params['id'];
                for(let f of this.activties){
                    let id= f.id;
                    let name = f.activityName;
                    if(form[name]==true){
                        switchForm.addControl(name, new FormControl(id));
                    }

                }
                this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value), this.accommodationId,"activity").subscribe(
                    res => {
                        console.log(res);
                        this.accommodation = res;
                    },
                    err => console.log(err)
                );

                console.log(form);
            }
        );
    }

}
