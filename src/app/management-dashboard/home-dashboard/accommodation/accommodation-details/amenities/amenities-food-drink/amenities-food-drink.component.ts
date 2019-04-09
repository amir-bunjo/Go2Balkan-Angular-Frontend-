import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
    selector: 'app-amenities-food-drink',
    templateUrl: './amenities-food-drink.component.html',
    styleUrls: ['./amenities-food-drink.component.css']
})
export class AmenitiesFoodDrinkComponent implements OnInit {

    accommodationId: number;
    foodForm: FormGroup;
    @Input('AccommodationFood') accommodation;
    @Input() foods:any;
    constructor(private accomService: AccommodationService,private route: ActivatedRoute) {
    }


    ngOnInit() {

        this.foodForm = new FormGroup({});
        if ( this.accommodation.optionsFoodDrink !== null &&  this.accommodation.optionsFoodDrink !== '' ) {
            let frontjson = JSON.parse(this.accommodation.optionsFoodDrink);
            console.log(frontjson);
            for( let f of this.foods) {
                let amenityName =f.amenityName;
                if( frontjson[amenityName] == undefined) {
                    this.foodForm.addControl(amenityName , new FormControl(false));
                }else {
                    this.foodForm.addControl(amenityName , new FormControl(true));
                }

            }

        }else {
            for( let f of this.foods) {
                let amenityName =f.amenityName;
                this.foodForm.addControl(amenityName , new FormControl(false));
            }

        }


        setTimeout(() => {
            this.formEvent();
        }, 1000);


    }

    formEvent() {
        this.foodForm.valueChanges.subscribe(
            form => {
                var switchForm = new FormGroup({});
                this.accommodationId = this.route.snapshot.params['id'];
                for(let f of this.foods){
                    let id= f.id;
                    let name = f.amenityName;
                    if(form[name]==true){
                        switchForm.addControl(name, new FormControl(id));
                    }

                }
                this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"fooddrink").subscribe(
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
