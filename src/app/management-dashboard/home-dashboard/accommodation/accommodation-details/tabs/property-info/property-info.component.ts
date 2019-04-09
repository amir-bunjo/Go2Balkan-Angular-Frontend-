import { Component, OnInit } from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {ActivatedRoute} from '@angular/router';
import {AccommodationService} from '../../../../../accommodation.service';

@Component({
  selector: 'app-property-info',
  templateUrl: './property-info.component.html',
  styleUrls: ['./property-info.component.css']
})
export class PropertyInfoComponent implements OnInit {

  accommodationId: number;
  accommodationData: any;

  propertyInfoForm: FormGroup;

  stars: number = null;
  checkInStart: string;
  checkInEnd: string;
  checkOutStart: string;
  checkOutEnd: string;
  // description: string;

  phoneNumberArray: string[];
  dialingCode: string;
  phone: string;
  initDone = false;
  successSave = false;

  checkInStartValuesAsList: string[];
  checkInEndValuesAsList: string[];
  checkOutStartValuesAsList: string[];
  checkOutEndValuesAsList: string[];

  constructor(private activatedRoute: ActivatedRoute,
              private accommodationService: AccommodationService) { }

  ngOnInit() {

      this.checkInStartValuesAsList = ['7:00 AM', '7:30 AM', '8:00 AM', '8:30 AM',
          '9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM',
          '11:00 AM', '11:30 AM', '12:00 PM', '12:30 PM',
          '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
          '3:00 PM', '3:30 PM', '4:00 PM', '4:30 PM',
          '5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM',
          '7:00 PM', '7:30 PM', '8:00 PM'];

      this.checkInEndValuesAsList = ['12:00 PM', '12:30 PM',
          '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
          '3:00 PM', '3:30 PM', '4:00 PM', '4:30 PM',
          '5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM',
          '7:00 PM', '7:30 PM', '8:00 PM', '8:30 PM',
          '9:00 PM', '9:30 PM', '10:00 PM', '10:30 PM',
          '11:00 PM', '11:30 PM', '12:00 AM'];

      this.checkOutStartValuesAsList = ['7:00 AM', '7:30 AM', '8:00 AM', '8:30 AM',
          '9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM',
          '11:00 AM', '11:30 AM', '12:00 PM', '12:30 PM',
          '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
          '3:00 PM', '3:30 PM', '4:00 PM', '4:30 PM',
          '5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM',
          '7:00 PM', '7:30 PM', '8:00 PM'];

      this.checkOutEndValuesAsList = ['12:00 PM', '12:30 PM',
          '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
          '3:00 PM', '3:30 PM', '4:00 PM', '4:30 PM',
          '5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM',
          '7:00 PM', '7:30 PM', '8:00 PM', '8:30 PM',
          '9:00 PM', '9:30 PM', '10:00 PM', '10:30 PM',
          '11:00 PM', '11:30 PM', '12:00 AM'];

      this.accommodationId = this.activatedRoute.snapshot.params['id'];

      // Fetching Accommodation Data By Accommodation Id
      this.fetchAccommodationByAccommodationId();

      setTimeout(() => {
          this.stars = this.accommodationData.rank;
          this.checkInStart = this.accommodationData.checkinStart;
          this.checkInEnd = this.accommodationData.checkinEnd;
          this.checkOutStart = this.accommodationData.checkoutStart;
          this.checkOutEnd = this.accommodationData.checkoutEnd;
          this.phoneNumberArray = this.accommodationData.phone.split('.', 2);
          this.dialingCode = this.phoneNumberArray[0];
          this.phone = this.phoneNumberArray[1];

          this.propertyInfoForm = new FormGroup({
              'propertyName': new FormControl(this.accommodationData.name, Validators.required),
              'yourCountry': new FormControl({value: this.accommodationData.state, disabled: true}),
              'phoneNumber': new FormControl(this.phone, Validators.required),
              'email': new FormControl(this.accommodationData.email, [Validators.required, Validators.email]),
              'web': new FormControl(this.accommodationData.web)
              // Miroslav: LOCATION BY GOOGLE MAPS SHOULD BE SETTED HERE IN FUTURE
          });

          this.initDone = true;

      }, 250);
  }

  simpleDisplaySelectedValueCheckInStart(checkInStart: string) {
      this.checkInStart = checkInStart;
  }

  simpleDisplaySelectedValueCheckInEnd(checkInEnd: string) {
      this.checkInEnd = checkInEnd;
  }

  simpleDisplaySelectedValueCheckOutStart(checkOutStart: string) {
      this.checkOutStart = checkOutStart;
  }

  simpleDisplaySelectedValueCheckOutEnd(checkOutEnd: string) {
      this.checkOutEnd = checkOutEnd;
  }

  simpleDisplayStars(stars: number) {
      this.stars = stars;
      // console.log(stars); // For Debugging
  }

  fetchAccommodationByAccommodationId() {
      this.accommodationService.fetchAccommodationByAccommodationId(this.accommodationId).subscribe(
          resp => {
              this.accommodationData = resp;
              console.log(this.accommodationData);
          }, error => {
              console.log(error);
          }, () => {
              console.log('fetch accommodation by id is complete');
          }
      );
  }

  saveOrUpdatePropertyInfos() {

      this.accommodationData.name = this.propertyInfoForm.value.propertyName;
      this.accommodationData.rank = this.stars.toFixed(1);
      this.accommodationData.checkinStart = this.checkInStart;
      this.accommodationData.checkinEnd = this.checkInEnd;
      this.accommodationData.checkoutStart = this.checkOutStart;
      this.accommodationData.checkoutEnd = this.checkOutEnd;
      this.accommodationData.phone = this.dialingCode + '.' + this.propertyInfoForm.value.phoneNumber;
      this.accommodationData.email = this.propertyInfoForm.value.email;
      this.accommodationData.web = this.propertyInfoForm.value.web;

      console.log(this.accommodationData);

      this.accommodationService.saveAccommodation(this.accommodationData).subscribe(
          response => {
              console.log(response);

              this.successSave = true;

              this.ngOnInit();

              setTimeout(() => {
                  this.successSave = false;
              }, 5000);
          }, error => {
              console.log(error);
          }
      );
  }

}
