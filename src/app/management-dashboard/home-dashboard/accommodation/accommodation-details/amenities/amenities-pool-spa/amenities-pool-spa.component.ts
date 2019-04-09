import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../../../accommodation.service';

@Component({
  selector: 'app-amenities-pool-spa',
  templateUrl: './amenities-pool-spa.component.html',
  styleUrls: ['./amenities-pool-spa.component.css']
})
export class AmenitiesPoolSpaComponent implements OnInit {

  poolForm: FormGroup;
  @Input('AccommodationPool') accommodation: any;
  @Input() poolSpa: any;
  accommodationId: number;
  auxArray: any ;


  constructor( private accomService: AccommodationService,private route: ActivatedRoute) {
  }

  ngOnInit() {

    this.poolForm = new FormGroup({});
    if ( this.accommodation.optionsPoolSpa !== null &&  this.accommodation.optionsPoolSpa !== '' ) {
      let frontjson = JSON.parse(this.accommodation.optionsPoolSpa);
      console.log(frontjson);
      for( let f of this.poolSpa) {
        let amenityName =f.amenityName;
        if( frontjson[amenityName] == undefined) {
          this.poolForm.addControl(amenityName , new FormControl(false));
        }else {
          this.poolForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.poolSpa) {
        let amenityName =f.amenityName;
        this.poolForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.poolForm.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.poolSpa){
            let id= f.id;
            let name = f.amenityName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"poolspa").subscribe(
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
