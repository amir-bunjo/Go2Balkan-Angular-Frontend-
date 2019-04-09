import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-pet',
  templateUrl: './pet.component.html',
  styleUrls: ['./pet.component.css']
})
export class PetComponent implements OnInit {

  accommodationId: number;

  firstChoice: string = null;
  secondChoice: string = null;

  priceValue: string;

  successSave = false;

  petsPolicyArr: string[] = [];
  petsPolicyFormSendingStr: string;

  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    this.accommodationId = this.activatedRoute.snapshot.params['id'];
    this.fetchPetsPolicyFromAccommodationByAccommodationId();
  }

  simpleDisplayDropdownFirstChoice(choice: string) {
    this.firstChoice = choice;
  }

  simpleDisplayDropdownSecondChoice(choice: string) {
    this.secondChoice = choice;
  }

  fetchPetsPolicyFromAccommodationByAccommodationId() {
    this.accommodationService.fetchPetsPolicyFromAccommodationByAccommodationId(this.accommodationId).subscribe(
        response => {
          this.petsPolicyArr = response;

          if (this.petsPolicyArr[0] !== '') {
              this.firstChoice = this.petsPolicyArr[0];
          }

          if (this.petsPolicyArr[0] === 'Yes' || this.petsPolicyArr[0] === 'Upon request') {
            this.secondChoice = this.petsPolicyArr[1];
          }

          if (this.petsPolicyArr[1] === 'Charges may apply') {
            this.priceValue = this.petsPolicyArr[2];
          }

        }, error => {
          console.log(error);
        }
    );
  }

  handleSavePetForm() {

    if (this.firstChoice === 'Yes' || this.firstChoice === 'Upon request') {

      this.petsPolicyFormSendingStr = this.firstChoice;

      if (this.secondChoice === 'Charges may apply') {

          if (this.priceValue === undefined) {
              this.petsPolicyFormSendingStr += ';' + this.secondChoice;
          } else {
              this.petsPolicyFormSendingStr += ';' + this.secondChoice + ';' + this.priceValue;
          }

      } else if (this.secondChoice === 'Pets can stay for free') {
        this.petsPolicyFormSendingStr += ';' + this.secondChoice;
      }

    } else if (this.firstChoice === 'No' || this.firstChoice == null) {
        this.petsPolicyFormSendingStr = 'No';
    }

      this.accommodationService.saveOrUpdatePetsPolicyStr(this.petsPolicyFormSendingStr, this.accommodationId).subscribe(
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
