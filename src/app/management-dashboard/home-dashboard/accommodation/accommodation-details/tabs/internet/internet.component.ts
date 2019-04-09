import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-internet',
  templateUrl: './internet.component.html',
  styleUrls: ['./internet.component.css']
})
export class InternetComponent implements OnInit {

  accommodationId: number;

  successSave = false;
  priceGreaterThanValidation = false;
  priceLessThanValidation = false;
  priceFieldRequired = false;
  allValidation = false;
  priceValue: number;

  firstChoice: string;
  accommodationConnectionType: string = null;
  accommodationConnectionLocation: string = null;

  cbConnectionTypes: any;
  cbConnectionLocations: any;

  internetOptionsFormSendingStr: string;
  internetOptions: string[] = [];

  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
      this.accommodationId = this.activatedRoute.snapshot.params['id'];
      this.getCbInternetConnectionTypes();
      this.getCbInternetConnectionLocations();
      this.fetchInternetOptionsFromAccommodationByAccommodationId();
  }

  simpleDisplayDropdownFirstChoice(choice: string) {
    this.firstChoice = choice;

    if (this.firstChoice === 'Yes, paid') {
        // this.validatePriceField();
        this.validatePriceFieldOnInit();
    } else if (this.firstChoice === 'No' || this.firstChoice === 'Yes, free') {
        this.allValidation = false;
    }
  }

  simpleDisplayDropdownConnectionTypeChoice(choice: string) {
    this.accommodationConnectionType = choice;
  }

  simpleDisplayDropdownConnectionLocationChoice(choice: string) {
    this.accommodationConnectionLocation = choice;
  }

  validatePriceFieldOnInit() {

      if (this.priceValue === undefined) {
          this.priceFieldRequired = true;
      } else {
          this.priceFieldRequired = false;
      }

      if (this.priceValue > 0 && this.priceValue < 100) {
          this.allValidation = false;
      } else {
          this.allValidation = true;
      }


      if (this.priceValue < 0) {
          this.priceLessThanValidation = true;
      } else {
          this.priceLessThanValidation = false;
      }


      if (this.priceValue > 100) {
          this.priceGreaterThanValidation = true;
      } else {
          this.priceGreaterThanValidation = false;
      }
  }

  validatePriceField() {

    if (this.firstChoice === 'Yes, paid') {
        if (this.priceValue > 0 && this.priceValue < 100) {
            this.allValidation = false;
        } else {
            this.allValidation = true;
        }


        if (this.priceValue < 1 && this.priceValue != null) {
          this.priceLessThanValidation = true;
        } else {
          this.priceLessThanValidation = false;
        }


        if (this.priceValue > 99) {
            this.priceGreaterThanValidation = true;
        } else {
            this.priceGreaterThanValidation = false;
        }

        if (this.priceValue == null) {
          this.priceFieldRequired = true;
        } else {
          this.priceFieldRequired = false;
        }
    }
  }

  getCbInternetConnectionTypes() {
      this.accommodationService.getCbInternetConnectionTypes().subscribe(
          response => {
              this.cbConnectionTypes = response;
          }, error => {
              console.log(error);
          }
      );
  }

  getCbInternetConnectionLocations() {
      this.accommodationService.getCbInternetConnectionLocations().subscribe(
          response => {
              this.cbConnectionLocations = response;
          }, error => {
              console.log(error);
          }
      );
  }

  fetchInternetOptionsFromAccommodationByAccommodationId() {
      this.accommodationService.fetchInternetOptionsFromAccommodationByAccommodationId(this.accommodationId).subscribe(
          response => {
              this.internetOptions = response;
              this.firstChoice = this.internetOptions[0];

              if (this.internetOptions[0] === 'Yes, free' || 'Yes, paid') {
                  this.accommodationConnectionType = this.internetOptions[1];
                  this.accommodationConnectionLocation = this.internetOptions[2];
              }

              if (this.internetOptions[0] === 'Yes, paid') {
                  this.priceValue = +this.internetOptions[3];
              }
          }, error => {
              console.log(error);
          }
      );
  }

  handleSaveInternetForm() {

      if (this.firstChoice === 'Yes, paid') {
          this.internetOptionsFormSendingStr = this.firstChoice + ';'
              + this.accommodationConnectionType + ';'
              + this.accommodationConnectionLocation + ';'
              + this.priceValue;
      } else if (this.firstChoice === 'No') {
          this.internetOptionsFormSendingStr = this.firstChoice;
      } else {
          this.internetOptionsFormSendingStr = this.firstChoice + ';'
              + this.accommodationConnectionType + ';'
              + this.accommodationConnectionLocation;
      }

      this.accommodationService.saveOrUpdateInternetOptionsStr(this.internetOptionsFormSendingStr, this.accommodationId).subscribe(
          response => {
              console.log(response);

              this.successSave = true;

              setTimeout(() => {
                  this.successSave = false;
              }, 5000);
          }, error => {
              console.log(error);
          }
      );
  }

}
