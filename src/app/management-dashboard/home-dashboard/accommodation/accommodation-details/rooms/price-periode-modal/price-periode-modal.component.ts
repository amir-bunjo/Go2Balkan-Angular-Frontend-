import {Component, Inject, OnInit, Optional, Input} from '@angular/core';
import {MAT_DIALOG_DATA, MatDialogRef} from '@angular/material';
import {AccommodationService} from '../../../../../accommodation.service';
import {Router, ActivatedRoute} from '@angular/router';
import {FormControl, FormGroup} from '@angular/forms';
import {PricePeriodeModel} from '../price-periode/price-periode.model';

@Component({
  selector: 'app-price-periode-modal',
  templateUrl: './price-periode-modal.component.html',
  styleUrls: ['./price-periode-modal.component.css']
})
export class PricePeriodeModalComponent implements OnInit {

  id: number;
  pricePeriodeModel: PricePeriodeModel;
  pricePeriodForm: FormGroup;
  endUserPrice: number;
  broj: number;
  today: any;
  totalPrice: number;
  priceTax: number;
  accommodationId: number;
  vatFromAcc: number;

  pom: string; // obrisat kasnije

  nizDel: number[];

  constructor( private accommodationService: AccommodationService, private router: Router, private route: ActivatedRoute,
               @Optional() @Inject(MAT_DIALOG_DATA) public data,
               @Optional() public dialogRef: MatDialogRef<PricePeriodeModalComponent>
  ) {
    
    console.log('data should be' );
    console.log(this.data);
    this.pricePeriodeModel = this.data && this.data.priceModel ? this.data.priceModel : new PricePeriodeModel();
    this.id = this.data.accommodation;
    
    //this.nizDel = [2,3]; // mozda ce trebat
  }

  ngOnInit() {

    this.setTodayDate();

    this.createPricePeriodForm();

    this.getVat();

    

    setTimeout(() => {
   
     this.pricePeriodForm.valueChanges.subscribe(form => {
      this.endUserPrice = form['commisiontype']==1 ? parseFloat(form['entryprice'])*(1 + parseFloat(form['commision'])/100) : parseFloat(form['entryprice']) + parseFloat(form['commision']) ;

      console.log('vat je: ' + form['vat']);
      console.log('end price je: ' + form['enduserprice']);

      this.priceTax = this.endUserPrice*(parseInt(form['vat'])/100.);

      this.totalPrice = this.endUserPrice*(1 + parseInt(form['vat'])/100);

      

       //console.log('entry price je: ' + form['entryprice']);
      });
  }, 1000);
    this.pricePeriodForm.get('entryprice').value
  }
  createPricePeriodForm() {

    this.pricePeriodForm = new FormGroup({
      'startdate': this.pricePeriodeModel.priceStartDate ? new FormControl(this.pricePeriodeModel.priceStartDate) : new FormControl(this.today),
      'enddate': new FormControl(this.pricePeriodeModel.priceEndDate),
      'entryprice': new FormControl(this.pricePeriodeModel.entrantCost),
      'commision': new FormControl(null),
      'vat': new FormControl(null),
      'commisiontype': new FormControl(null),
      'enduserprice': new FormControl(this.pricePeriodeModel.enduserPrice),
      'tax': new FormControl(null),
      'totalprice': new FormControl(null)

    });

  }
  savePricePeriode(){

    console.log(this.pricePeriodForm.value.startdate.toString());
    this.pricePeriodeModel.accommodation = this.data.accommodation;
    this.pricePeriodeModel.roomType = this.data.roomType;
    this.pricePeriodeModel.priceStartDate = this.pricePeriodForm.value.startdate.toString();
    this.pricePeriodeModel.priceEndDate = this.pricePeriodForm.value.enddate.toString();
    this.pricePeriodeModel.entrantCost = parseFloat(this.pricePeriodForm.value.entryprice);
    this.pricePeriodeModel.commision = this.pricePeriodForm.value.commision;
    this.pricePeriodeModel.vatFree = this.pricePeriodForm.value.entryprice*(1 + this.pricePeriodForm.value.commision/100);
    this.pricePeriodeModel.vatBase = this.pricePeriodeModel.vatFree*this.pricePeriodForm.value.vat/100;

    this.pricePeriodeModel.enduserPrice = this.endUserPrice;
  
    console.log(this.pricePeriodeModel);

      this.accommodationService.saveOrUpdatePricePeriode(this.pricePeriodeModel)
        .subscribe(res =>
            this.router.navigate(['/dashboard/rooms/' + this.id], {skipLocationChange: true}));
  }

  setTodayDate(){
    var date = new Date();
    var y= date.getFullYear();
    var m = (date.getMonth() + 1).toString();
    var d = date.getDate().toString();

    d = parseInt(d) < 10 ? '0' + d : d;
    m = parseInt(m) < 10 ? '0' + m : m;

    this.today = [y,m,d].join('-');

  }

  getVat()  {

    this.accommodationService.getAccommodationById(this.data.accommodation).subscribe( res => {

      console.log('vat bi trebo bit ' + res['vat']);
      console.log('nizVatova(iz kolone rent_items) bi trebo bit ' + res['rentItems']);
      this.pom = res['vat']; // mjenjano res['rentitems']



      this.nizDel = this.pom.split(',').map(function(item){
        return parseFloat(item) 
      });



      this.vatFromAcc = res['vat']; // u ovom slucaju vat je obicni string
        
      return parseFloat(res['vat']); // ima povratnu vrijednost koja se vjerovatno nece koristit
    });
  }

 


}
