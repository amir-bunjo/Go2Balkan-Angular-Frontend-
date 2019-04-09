import {Component, Input, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-amenities-shops',
  templateUrl: './amenities-shops.component.html',
  styleUrls: ['./amenities-shops.component.css']
})
export class AmenitiesShopsComponent implements OnInit {

  accommodationId: number;
  shopForm: FormGroup;
  @Input('AccommodationShop') accommodation: any;
  @Input() shop: any;


  constructor(private accomService: AccommodationService, private route: ActivatedRoute) {
  }

  ngOnInit() {

    this.shopForm = new FormGroup({});
    if (this.accommodation.optionsShops !== null && this.accommodation.optionsShops !== '') {
      let frontjson = JSON.parse(this.accommodation.optionsShops);
      console.log(frontjson);
      for (let f of this.shop) {
        let amenityName = f.shopName;
        if (frontjson[amenityName] == undefined) {
          this.shopForm.addControl(amenityName, new FormControl(false));
        } else {
          this.shopForm.addControl(amenityName, new FormControl(true));
        }

      }

    } else {
      for (let f of this.shop) {
        let amenityName = f.shopName;
        this.shopForm.addControl(amenityName, new FormControl(false));
      }

    }


    setTimeout(() => {
      this.formEvent();
    }, 1000);


  }

  formEvent() {
    this.shopForm.valueChanges.subscribe(
        form => {
          var switchForm = new FormGroup({});
          this.accommodationId = this.route.snapshot.params['id'];
          for (let f of this.shop) {
            let id = f.id;
            let name = f.shopName;
            if (form[name] == true) {
              switchForm.addControl(name, new FormControl(id));
            }

          }
          this.accomService.saveAmenitiesByAccommodationId(JSON.stringify(switchForm.value), this.accommodationId, "shops").subscribe(
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
