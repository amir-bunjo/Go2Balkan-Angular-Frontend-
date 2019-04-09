import {Component, Input, OnInit} from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {FormControl, FormGroup} from '@angular/forms';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-common-areas',
  templateUrl: './amenities-common-areas.component.html',
  styleUrls: ['./amenities-common-areas.component.css']
})
export class AmenitiesCommonAreasComponent implements OnInit {

  accommodationId: number;
  @Input() commonAreasLocal;
  @Input('AccommodationCommon') accommodation;
  commonAreasForm: FormGroup;

  constructor(private accomService: AccommodationService, private route: ActivatedRoute) { }

  ngOnInit() {

    this.commonAreasForm = new FormGroup({});
    if ( this.accommodation.optionsCommonAreas !== null &&  this.accommodation.optionsCommonAreas !== '{}' ) {
      let frontjson = JSON.parse(this.accommodation.optionsCommonAreas);
      console.log(frontjson);
      for( let f of this.commonAreasLocal) {
        let amenityName =f.areaName;
        if( frontjson[amenityName] == undefined) {
          this.commonAreasForm.addControl(amenityName , new FormControl(false));
        }else {
          this.commonAreasForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.commonAreasLocal) {
        let amenityName =f.areaName;
        this.commonAreasForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.commonAreasForm.valueChanges.subscribe(
        form => {
          let switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.commonAreasLocal){
            let id= f.id;
            let name = f.areaName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"commonareas").subscribe(
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
