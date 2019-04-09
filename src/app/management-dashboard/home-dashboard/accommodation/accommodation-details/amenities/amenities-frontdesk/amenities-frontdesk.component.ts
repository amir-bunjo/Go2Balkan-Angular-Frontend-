import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-frontdesk',
  templateUrl: './amenities-frontdesk.component.html',
  styleUrls: ['./amenities-frontdesk.component.css']
})
export class AmenitiesFrontdeskComponent implements OnInit {

    @Input() frontdeskservice;
    @Input('AccommodationFront') accommodation;
    frontdeskForm: FormGroup;
    accommodationId: number;

    constructor(private accomService: AccommodationService, private route: ActivatedRoute) { }

    ngOnInit() {
        console.log(this.frontdeskservice);

        this.frontdeskForm = new FormGroup({});
        if ( this.accommodation.optionsFrontdeskServices !== null &&  this.accommodation.optionsFrontdeskServices !== '' ) {
            let frontjson = JSON.parse(this.accommodation.optionsFrontdeskServices);
            console.log(frontjson);
            for( let f of this.frontdeskservice) {
                let amenityName =f.serviceName;
                if( frontjson[amenityName] == undefined) {
                    this.frontdeskForm.addControl(amenityName , new FormControl(false));
                }else {
                    this.frontdeskForm.addControl(amenityName , new FormControl(true));
                }

            }

        }else {
            for( let f of this.frontdeskservice) {
                let amenityName =f.serviceName;
                this.frontdeskForm.addControl(amenityName , new FormControl(false));
            }

        }


        setTimeout(() => {
            this.formEvent();
        }, 1000);


    }

    formEvent() {
        this.frontdeskForm.valueChanges.subscribe(
            form => {
                let switchForm = new FormGroup({});
                this.accommodationId = this.route.snapshot.params['id'];
                for(let f of this.frontdeskservice){
                    let id= f.id;
                    let name = f.serviceName;
                    if(form[name]==true){
                        switchForm.addControl(name, new FormControl(id));
                    }

                }
                this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"frontdesk").subscribe(
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
