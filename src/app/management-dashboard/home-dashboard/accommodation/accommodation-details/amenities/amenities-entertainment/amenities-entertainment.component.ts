import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-entertainment',
  templateUrl: './amenities-entertainment.component.html',
  styleUrls: ['./amenities-entertainment.component.css']
})
export class AmenitiesEntertainmentComponent implements OnInit {

  accommodationId: number;
  @Input() entertainmentLocal;
  @Input('AccommodationEntertainment') accommodation;
  entertainmentForm: FormGroup;

  constructor(private accomService: AccommodationService, private route: ActivatedRoute) { }

  ngOnInit() {

    this.entertainmentForm = new FormGroup({});
    if ( this.accommodation.optionsEntertainment !== null &&  this.accommodation.optionsEntertainment !== '{}' ) {
      let frontjson = JSON.parse(this.accommodation.optionsEntertainment);
      console.log(frontjson);
      for( let f of this.entertainmentLocal) {
        let amenityName =f.entertainmentName;
        if( frontjson[amenityName] == undefined) {
          this.entertainmentForm.addControl(amenityName , new FormControl(false));
        }else {
          this.entertainmentForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.entertainmentLocal) {
        let amenityName =f.entertainmentName;
        this.entertainmentForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.entertainmentForm.valueChanges.subscribe(
        form => {
          let switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.entertainmentLocal){
            let id= f.id;
            let name = f.entertainmentName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"entertainment").subscribe(
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
