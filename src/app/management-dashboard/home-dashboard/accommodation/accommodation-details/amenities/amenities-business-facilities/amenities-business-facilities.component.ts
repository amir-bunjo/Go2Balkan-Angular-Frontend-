import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-business-facilities',
  templateUrl: './amenities-business-facilities.component.html',
  styleUrls: ['./amenities-business-facilities.component.css']
})
export class AmenitiesBusinessFacilitiesComponent implements OnInit {

  accommodationId: number;
  facilitiesForm: FormGroup;
  @Input() facilities: any;
  @Input('FacilitiesAccommodation') accommodation: any;

  constructor( private accomService: AccommodationService, private route: ActivatedRoute) {
  }

  ngOnInit() {

    this.facilitiesForm = new FormGroup({});
    if ( this.accommodation.optionsBusinessFacilities !== null &&  this.accommodation.optionsBusinessFacilities !== '' ) {
      let frontjson = JSON.parse(this.accommodation.optionsBusinessFacilities);
      console.log(frontjson);
      for( let f of this.facilities) {
        let amenityName = f.facilityName;
        if( frontjson[amenityName] == undefined) {
          this.facilitiesForm.addControl(amenityName , new FormControl(false));
        }else {
          this.facilitiesForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.facilities) {
        let amenityName =f.facilityName;
        this.facilitiesForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.facilitiesForm.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.facilities){
            let id= f.id;
            let name = f.facilityName;
            if(form[name] == true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value), this.accommodationId,"businessfacilities").subscribe(
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
