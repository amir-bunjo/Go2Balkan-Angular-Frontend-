import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-transportation',
  templateUrl: './amenities-transportation.component.html',
  styleUrls: ['./amenities-transportation.component.css']
})
export class AmenitiesTransportationComponent implements OnInit {

  accommodationId: number;
  transportFrom: FormGroup;
  @Input() transportation: any;
  @Input('AccommodationTransportation') accommodation;
  auxArray: any;

  constructor(private accomService: AccommodationService, private route: ActivatedRoute) {
  }

  ngOnInit() {

    this.transportFrom = new FormGroup({});
    if ( this.accommodation.optionsTransportation !== null &&  this.accommodation.optionsTransportation !== '' ) {
      let frontjson = JSON.parse(this.accommodation.optionsTransportation);
      console.log(frontjson);
      for( let f of this.transportation) {
        let amenityName =f.amenityName;
        if( frontjson[amenityName] == undefined) {
          this.transportFrom.addControl(amenityName , new FormControl(false));
        }else {
          this.transportFrom.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.transportation) {
        let amenityName =f.amenityName;
        this.transportFrom.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.transportFrom.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.transportation){
            let id= f.id;
            let name = f.amenityName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"transportation").subscribe(
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
