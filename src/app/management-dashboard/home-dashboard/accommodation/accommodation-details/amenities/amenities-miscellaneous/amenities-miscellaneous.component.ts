import {Component, Input, OnInit} from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {FormControl, FormGroup} from '@angular/forms';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-miscellaneous',
  templateUrl: './amenities-miscellaneous.component.html',
  styleUrls: ['./amenities-miscellaneous.component.css']
})
export class AmenitiesMiscellaneousComponent implements OnInit {


  accommodationId: number;
  @Input() miscellaneous;
  @Input('AccommodationMiscellaneous') accommodation;
  miscellaneousForm: FormGroup;

  constructor(private accomService: AccommodationService, private route: ActivatedRoute) { }


  ngOnInit() {

    this.miscellaneousForm = new FormGroup({});
    if ( this.accommodation.optionsMiscellaneous !== null &&  this.accommodation.optionsMiscellaneous !== '' ) {
      let frontjson = JSON.parse(this.accommodation.optionsMiscellaneous);
      console.log(frontjson);
      for( let f of this.miscellaneous) {
        let amenityName = f.optionName;
        if( frontjson[amenityName] == undefined) {
          this.miscellaneousForm.addControl(amenityName , new FormControl(false));
        }else {
          this.miscellaneousForm.addControl(amenityName , new FormControl(true));
        }

      }

    }else {
      for( let f of this.miscellaneous) {
        let amenityName =f.optionName;
        this.miscellaneousForm.addControl(amenityName , new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.miscellaneousForm.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for(let f of this.miscellaneous){
            let id= f.id;
            let name = f.optionName;
            if(form[name]==true){
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value),this.accommodationId,"miscellaneous").subscribe(
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
