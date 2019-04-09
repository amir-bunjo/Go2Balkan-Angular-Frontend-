import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {MatDialog} from '@angular/material';
import {AccommodationService} from '../../../../../accommodation.service';
import { ConfirmModalComponent } from '../confirm-modal/confirm-modal.component';
import { PricePeriodeModalComponent } from '../price-periode-modal/price-periode-modal.component';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-price-periode',
  templateUrl: './price-periode.component.html',
  styleUrls: ['./price-periode.component.css']
})
export class PricePeriodeComponent implements OnInit {
 
  accommodationModel: any;
  clicked = false;
  priceModel: any;
  @Input() pricePeride;
  @Input() accommodationId;
  @Input() roomId;
  @Output() addPricePeriodeClicked = new EventEmitter();
  @Output() openPricePeriodeDialog = new EventEmitter();
  @Output() deletePricePeriodeEmitter = new EventEmitter();


  constructor(public dialog: MatDialog, private accommodationService: AccommodationService,route: ActivatedRoute) { }

  ngOnInit() {
    //console.log(this.accommodationID);
    this.clicked = true;
    this.loadPriceModel();
    this.loadAccommodationById();
  }

  addPricePeriode(accommodation, roomType){

    console.log("kliknuto na add price period");
    //this.openPricePeriodeDialog.emit();
        // stari nacin koji neloda ---- this.dialog.open(PricePeriodeModalComponent, { data: {accommodation , roomType }}).afterClosed().subscribe(res => this.addPricePeriodeClicked.emit() );
        this.dialog.open(PricePeriodeModalComponent, {data: {accommodation, roomType}}).
        afterClosed().subscribe(data => this.loadPriceModel());
  }
  deletePricePeriode(id){
    console.log("kliknuto na delete");
    console.log("id prices perioda"+ id);

    //this.deletePricePeriodeEmitter.emit(id);

    this.dialog.open(ConfirmModalComponent, { data: { id } }).
    afterClosed().subscribe(data => this.loadPriceModel());

    

  }

  updatePricePeriode(priceModel,accommodation,roomType,priceId){

    this.dialog.open(PricePeriodeModalComponent, { data: { priceModel, accommodation, roomType, priceId }}).
    afterClosed().subscribe(data => this.loadPriceModel());

  }

  loadPriceModel(){
    this.accommodationService.getAllPricePeriodeFromAccommodation(this.accommodationId, this.roomId).subscribe(
      res => {this.priceModel = res ; console.log('price model should be' + this.priceModel) ; //this.periodeStatus = true;
      },
      err => console.log(err)
  );
  }

  loadAccommodationById(){

    this.accommodationService.getAccommodationById(this.accommodationId).subscribe(res => {
      console.log('vat bi trebo bit' + res['vat']);
    });
  }


}
