import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-languages',
  templateUrl: './languages.component.html',
  styleUrls: ['./languages.component.css']
})
export class LanguagesComponent implements OnInit {

  staffLanguages: any;
  newStaffLanguagesList: string[] = [];
  accommodationId: number;

  countVar = 0;
  deleteAction = false;
  additionAction = false;

  newLanguageChoice = '';

  notEqualsCounter = 0;
  cbStaffLanguages: any;
  newCbLanguagesList: string[] = [];
  newStaffLanguagesListWithAddedLanguage: string[] = [];

  deleteLanguageChoice = '';

  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
      this.accommodationId = this.activatedRoute.snapshot.params['id'];

      this.fetchStaffLanguagesFromAccommodationByAccommodationId();
  }

    addNewLanguage(newLanguageFromCb: string) {

        this.additionAction = true;

        this.countVar = 0;

        console.log(newLanguageFromCb);
        this.newLanguageChoice = newLanguageFromCb;

        this.newStaffLanguagesListWithAddedLanguage[this.countVar] = this.newLanguageChoice;
        this.countVar++;

        for (const lang of this.staffLanguages) {
            this.newStaffLanguagesListWithAddedLanguage[this.countVar] = lang;
            this.countVar++;
        }

        // console.log(this.newStaffLanguagesListWithAddedLanguage); // FOR DEBUGGING

        this.saveOrUpdateStaffLanguagesList(this.newStaffLanguagesListWithAddedLanguage);

        this.newStaffLanguagesListWithAddedLanguage = [];

        setTimeout(() => {
            this.getCbAccommodationStaffLanguages();
            this.additionAction = false;
        }, 450);

        setTimeout(() => {
            this.ngOnInit();
        }, 250);
    }

    getCbAccommodationStaffLanguages() {
      this.accommodationService.getCbAccommodationStaffLanguages().subscribe(
          resp => {
              this.cbStaffLanguages = resp;
              // console.log(this.cbStaffLanguages); // FOR DEBUGGING
              this.refreshCbStaffLanguagesKeepOnlyNewLangs();
          }, error => {
              console.log(error);
          }
      );
    }

    refreshCbStaffLanguagesKeepOnlyNewLangs() {

      this.countVar = 0;
      this.notEqualsCounter = 0;

      this.newCbLanguagesList = [];

      for (const cbLang of this.cbStaffLanguages) {
          for (const lang of this.staffLanguages) {
              if (cbLang.languageType !== lang) {
                  this.notEqualsCounter++;
              }
          }

          if (this.notEqualsCounter !== this.staffLanguages.length - 1) {
              this.newCbLanguagesList[this.countVar] = cbLang.languageType;
              this.countVar++;
          }
          this.notEqualsCounter = 0;
      }

      // console.log(this.newCbLanguagesList);
    }

    fetchStaffLanguagesFromAccommodationByAccommodationId() {
      this.accommodationService.fetchStaffLanguagesFromAccommodationByAccommodationId(this.accommodationId).subscribe(
          resp => {
              this.staffLanguages = resp;
              // console.log(this.staffLanguages); // FOR DEBUGGING
          }, error => {
              console.log(error);
          }, () => {
              console.log('fetch staffLanguages from accommodation by accommodation by id is complete');
          }
      );
  }

  deleteStaffLanguage(staffLanguage: string) {

      this.deleteLanguageChoice = '';

      this.deleteAction = true;

      this.countVar = 0;

      for (const language of this.staffLanguages) {

          if (language !== staffLanguage) {
              this.newStaffLanguagesList[this.countVar] = language;
              this.countVar++;
          }
      }
      // console.log(this.newStaffLanguagesList); // FOR DEBUGGING
      this.saveOrUpdateStaffLanguagesList(this.newStaffLanguagesList);

      this.newStaffLanguagesList = [];

      setTimeout(() => {
          this.ngOnInit();
          this.deleteAction = false;
      }, 250);
  }

  saveOrUpdateStaffLanguagesList(newStaffLanguageListStrArr: string[]) {
      this.accommodationService.saveOrUpdateStaffLanguagesList(newStaffLanguageListStrArr, this.accommodationId).subscribe(
          resp => {
              // console.log(resp); // For Debugging
          }, error => {
              // console.log(error); // For Debugging
          }, () => {
              // console.log('save or update completed'); // For Debugging
          }
      );
  }

  setLanguageChoiceToEmpty() {
      this.newLanguageChoice = '';
  }

  setDeleteLanguageChoice(deleteLanguageChoice: string) {
      this.deleteLanguageChoice = deleteLanguageChoice;
  }

  setDeleteLanguageChoiceToEmpty() {
      this.deleteLanguageChoice = '';
  }

}
