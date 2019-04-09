import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-cleaning-services',
  templateUrl: './amenities-cleaning-services.component.html',
  styleUrls: ['./amenities-cleaning-services.component.css']
})
export class AmenitiesCleaningServicesComponent implements OnInit {

  accommodationId: number;
  @Input() cleaningLocal;
  @Input('AccommodationCleaning') accommodation;
  CleaningForm: FormGroup;

  constructor(private accomService: AccommodationService, private route: ActivatedRoute) { }

  ngOnInit() {

    this.CleaningForm = new FormGroup({});
    if ( this.accommodation.optionsCleaningServices !== null &&  this.accommodation.optionsCleaningServices !== '' ) {
      let frontjson = JSON.parse(this.accommodation.optionsCleaningServices);
      console.log(frontjson);
      for( let f of this.cleaningLocal) {
        let amenityName =f.serviceName;
        if( frontjson[amenityName] == undefined) {
          this.CleaningForm.addControl(amenityName , new FormControl(false));
        }else {
          this.CleaningForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.cleaningLocal) {
        let amenityName =f.serviceName;
        this.CleaningForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.CleaningForm.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.cleaningLocal){
            let id= f.id;
            let name = f.serviceName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"cleaning").subscribe(
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
