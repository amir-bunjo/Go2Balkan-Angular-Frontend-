import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-cards',
  templateUrl: './cards.component.html',
  styleUrls: ['./cards.component.css']
})
export class CardsComponent implements OnInit {

  // 1
  creditCards: any;
  newCreditCardsList: string[] = [];
  accommodationId: number;

  // 2
  countVar = 0;
  deleteAction = false;
  additionAction = false;

  newCardChoice = '';

  // 3
  cbCreditCards: any;
  notEqualsCounter = 0;
  newCbCreditCardsList: string[] = [];
  newCreditCardsListWithAddedCard: string[] = [];

  deleteCardChoice = '';


  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
      this.accommodationId = this.activatedRoute.snapshot.params['id'];

      this.fetchCreditCardsFromAccommodationByAccommodationId();
  }

    addNewCard(newCardFromCb: string) {

        this.additionAction = true;

        this.countVar = 0;

        console.log(newCardFromCb);
        this.newCardChoice = newCardFromCb;

        this.newCreditCardsListWithAddedCard[this.countVar] = this.newCardChoice;
        this.countVar++;

        for (const card of this.creditCards) {
            this.newCreditCardsListWithAddedCard[this.countVar] = card;
            this.countVar++;
        }

        // console.log(this.newStaffLanguagesListWithAddedLanguage); // FOR DEBUGGING

        this.saveOrUpdateCreditCardsList(this.newCreditCardsListWithAddedCard);

        this.newCreditCardsListWithAddedCard = [];

        setTimeout(() => {
            this.getCbAccommodationCreditCards();
            this.additionAction = false;
        }, 450);

        setTimeout(() => {
            this.ngOnInit();
        }, 250);
    }

    getCbAccommodationCreditCards() {
        this.accommodationService.getCbAccommodationCreditCards().subscribe(
            resp => {
                this.cbCreditCards = resp;
                // console.log(this.cbStaffLanguages); // FOR DEBUGGING
                this.refreshCbCreditCardsKeepOnlyNewLangs();
            }, error => {
                console.log(error);
            }
        );
    }

    refreshCbCreditCardsKeepOnlyNewLangs() {

        this.countVar = 0;
        this.notEqualsCounter = 0;

        this.newCbCreditCardsList = [];

        for (const cbCard of this.cbCreditCards) {
            for (const card of this.creditCards) {
                if (cbCard.cardName !== card) {
                    this.notEqualsCounter++;
                }
            }

            if (this.notEqualsCounter !== this.creditCards.length - 1) {
                this.newCbCreditCardsList[this.countVar] = cbCard.cardName;
                this.countVar++;
            }
            this.notEqualsCounter = 0;
        }

        // console.log(this.newCbLanguagesList);
    }

    fetchCreditCardsFromAccommodationByAccommodationId() {
        this.accommodationService.fetchCreditCardsFromAccommodationByAccommodationId(this.accommodationId).subscribe(
            resp => {
                this.creditCards = resp;
                // console.log(this.staffLanguages); // FOR DEBUGGING
            }, error => {
                console.log(error);
            }, () => {
                console.log('fetch creditCards from accommodation by accommodation by id is complete');
            }
        );
    }

    deleteCreditCard(creditCard: string) {

        this.deleteCardChoice = '';

        this.deleteAction = true;

        this.countVar = 0;

        for (const card of this.creditCards) {

            if (card !== creditCard) {
                this.newCreditCardsList[this.countVar] = card;
                this.countVar++;
            }
        }
        // console.log(this.newStaffLanguagesList); // FOR DEBUGGING
        this.saveOrUpdateCreditCardsList(this.newCreditCardsList);

        this.newCreditCardsList = [];

        setTimeout(() => {
            this.ngOnInit();
            this.deleteAction = false;
        }, 250);
    }

    saveOrUpdateCreditCardsList(newStaffLanguageListStrArr: string[]) {
        this.accommodationService.saveOrUpdateCreditCardsList(newStaffLanguageListStrArr, this.accommodationId).subscribe(
            resp => {
                // console.log(resp); // For Debugging
            }, error => {
                // console.log(error); // For Debugging
            }, () => {
                // console.log('save or update completed'); // For Debugging
            }
        );
    }

    setCardChoiceToEmpty() {
        this.newCardChoice = '';
    }

    setDeleteCardChoice(deleteCardChoice: string) {
        this.deleteCardChoice = deleteCardChoice;
    }

    setDeleteCardChoiceToEmpty() {
        this.deleteCardChoice = '';
    }

}
