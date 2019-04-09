import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-parking',
  templateUrl: './parking.component.html',
  styleUrls: ['./parking.component.css']
})
export class ParkingComponent implements OnInit {

  accommodationId: number;

  firstChoice: string = null;
  secondChoice: string = null;
  thirdChoice: string = null;
  fourthChoice: string = null;

  priceGreaterThanValidation = false;
  priceLessThanValidation = false;
  priceFieldRequired = false;
  allValidation = false;
  priceValue: number;
  successSave = false;

  parkingOptions: string[] = [];
  parkingOptionsFormSendingStr: string;

  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
      this.accommodationId = this.activatedRoute.snapshot.params['id'];
      this.fetchParkingOptionsFromAccommodationByAccommodationId();
  }

    simpleDisplayDropdownFirstChoice(choice: string) {
        this.firstChoice = choice;

        if (this.firstChoice === 'Yes, paid') {
            this.validatePriceFieldOnInit();
        } else if (this.firstChoice === 'No' || this.firstChoice === 'Yes, free') {
            this.allValidation = false;
        }
    }

    simpleDisplayDropdownSecondChoice(choice: string) {
        this.secondChoice = choice;
    }

    simpleDisplayDropdownThirdChoice(choice: string) {
        this.thirdChoice = choice;
    }

    simpleDisplayDropdownFourthChoice(choice: string) {
        this.fourthChoice = choice;
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

    fetchParkingOptionsFromAccommodationByAccommodationId() {
      this.accommodationService.fetchParkingOptionsFromAccommodationByAccommodationId(this.accommodationId).subscribe(
          response => {
              this.parkingOptions = response;

              if (this.parkingOptions[0] !== '') {
                  this.firstChoice = this.parkingOptions[0];
              }

              if (this.parkingOptions[0] === 'Yes, free' || this.parkingOptions[0] === 'Yes, paid') {
                  this.secondChoice = this.parkingOptions[1];
                  this.thirdChoice = this.parkingOptions[2];
                  this.fourthChoice = this.parkingOptions[3];
              }

              if (this.parkingOptions[0] === 'Yes, paid') {
                  this.priceValue = +this.parkingOptions[4];
              }
          }, error => {

          }
      );
    }

    handleSaveParkingForm() {

        if (this.firstChoice === 'Yes, paid') {
            this.parkingOptionsFormSendingStr = this.firstChoice + ';'
                + this.secondChoice + ';'
                + this.thirdChoice + ';'
                + this.fourthChoice + ';'
                + this.priceValue;
        } else if (this.firstChoice === 'No') {
            this.parkingOptionsFormSendingStr = this.firstChoice;
        } else {
            this.parkingOptionsFormSendingStr = this.firstChoice + ';'
                + this.secondChoice + ';'
                + this.thirdChoice + ';'
                + this.fourthChoice;
        }

        this.accommodationService.saveOrUpdateParkingOptionsStr(this.parkingOptionsFormSendingStr, this.accommodationId).subscribe(
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
