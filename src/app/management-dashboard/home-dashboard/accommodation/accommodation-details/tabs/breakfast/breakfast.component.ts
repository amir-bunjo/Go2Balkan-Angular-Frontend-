import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-breakfast',
  templateUrl: './breakfast.component.html',
  styleUrls: ['./breakfast.component.css']
})
export class BreakfastComponent implements OnInit {

    // 1
    accommodationId: number;
    breakfasts: any;
    newBreakfastsList: string[] = [];


    // 2
    additionAction = false;
    countVar = 0;
    deleteAction = false;

    newBreakfastChoice = '';

    // 3
    notEqualsCounter = 0;
    cbBreakfasts: any;
    newCbBreakfastsList: string[] = [];
    newBreakfastsListWithAddedCard: string[] = [];



    deleteBreakfastChoice = '';

    constructor(private accommodationService: AccommodationService,
                private activatedRoute: ActivatedRoute) { }

    ngOnInit() {
        this.accommodationId = this.activatedRoute.snapshot.params['id'];

        this.fetchBreakfastsFromAccommodationByAccommodationId();
    }

    addNewBreakfast(newBreakfastFromCb: string) {

        this.additionAction = true;

        this.countVar = 0;

        console.log(newBreakfastFromCb);
        this.newBreakfastChoice = newBreakfastFromCb;

        this.newBreakfastsListWithAddedCard[this.countVar] = this.newBreakfastChoice;
        this.countVar++;

        for (const bf of this.breakfasts) {
            this.newBreakfastsListWithAddedCard[this.countVar] = bf;
            this.countVar++;
        }

        // console.log(this.newStaffLanguagesListWithAddedLanguage); // FOR DEBUGGING

        this.saveOrUpdateBreakfastsList(this.newBreakfastsListWithAddedCard);

        this.newBreakfastsListWithAddedCard = [];

        setTimeout(() => {
            this.getCbAccommodationBreakfasts();
            this.additionAction = false;
        }, 450);

        setTimeout(() => {
            this.ngOnInit();
        }, 250);
    }

    getCbAccommodationBreakfasts() {
        this.accommodationService.getCbAccommodationBreakfasts().subscribe(
            resp => {
                this.cbBreakfasts = resp;
                // console.log(this.cbStaffLanguages); // FOR DEBUGGING
                this.refreshCbBreakfastsKeepOnlyNewLangs();
            }, error => {
                console.log(error);
            }
        );
    }

    refreshCbBreakfastsKeepOnlyNewLangs() {

        this.countVar = 0;
        this.notEqualsCounter = 0;

        this.newCbBreakfastsList = [];

        for (const cbBf of this.cbBreakfasts) {
            for (const bf of this.breakfasts) {
                if (cbBf.breakfastType !== bf) { // TEST THIS AGAIN
                    this.notEqualsCounter++;
                }
            }

            if (this.notEqualsCounter !== this.breakfasts.length - 1) {
                this.newCbBreakfastsList[this.countVar] = cbBf.breakfastType; // TEST THIS AGAIN
                this.countVar++;
            }
            this.notEqualsCounter = 0;
        }

        // console.log(this.newCbLanguagesList);
    }

    fetchBreakfastsFromAccommodationByAccommodationId() {
        this.accommodationService.fetchBreakfastsFromAccommodationByAccommodationId(this.accommodationId).subscribe(
            resp => {
                this.breakfasts = resp;
                // console.log(this.staffLanguages); // FOR DEBUGGING
            }, error => {
                console.log(error);
            }, () => {
                console.log('fetch creditCards from accommodation by accommodation by id is complete');
            }
        );
    }

    deleteBreakfast(breakfast: string) {

        this.deleteBreakfastChoice = '';

        this.deleteAction = true;

        this.countVar = 0;

        for (const bf of this.breakfasts) {

            if (bf !== breakfast) {
                this.newBreakfastsList[this.countVar] = bf;
                this.countVar++;
            }
        }
        // console.log(this.newStaffLanguagesList); // FOR DEBUGGING
        this.saveOrUpdateBreakfastsList(this.newBreakfastsList);

        this.newBreakfastsList = [];

        setTimeout(() => {
            this.ngOnInit();
            this.deleteAction = false;
        }, 250);
    }

    saveOrUpdateBreakfastsList(newStaffLanguageListStrArr: string[]) {
        this.accommodationService.saveOrUpdateBreakfastsList(newStaffLanguageListStrArr, this.accommodationId).subscribe(
            resp => {
                // console.log(resp); // For Debugging
            }, error => {
                // console.log(error); // For Debugging
            }, () => {
                // console.log('save or update completed'); // For Debugging
            }
        );
    }

    setBreakfastChoiceToEmpty() {
        this.newBreakfastChoice = '';
    }

    setDeleteBreakfastChoice(deleteBreakfastChoice: string) {
        this.deleteBreakfastChoice = deleteBreakfastChoice;
    }

    setDeleteBreakfastChoiceToEmpty() {
        this.deleteBreakfastChoice = '';
    }

}
