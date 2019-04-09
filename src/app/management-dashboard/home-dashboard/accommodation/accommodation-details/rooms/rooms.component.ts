import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../../accommodation.service';
import {PricePeriodeModalComponent} from './price-periode-modal/price-periode-modal.component';
import {MatDialog} from '@angular/material';
import {ConfirmModalComponent} from './confirm-modal/confirm-modal.component';
import {animate, state, style, transition, trigger} from '@angular/animations';

@Component({
  selector: 'app-rooms',
  templateUrl: './rooms.component.html',
  styleUrls: ['./rooms.component.css'],
  animations: [
    trigger('detailExpand', [
      state('collapsed', style({height: '0px', minHeight: '0', display: 'none'})),
      state('expanded', style({height: '*'})),
      transition('expanded <=> collapsed', animate('225ms cubic-bezier(0.4, 0.0, 0.2, 1)')),
    ]),
  ],
})
export class RoomsComponent implements OnInit {

  id:any;
  roomType: any;
  pricePeriode: any;
  roomNames: any;
  rommStatus = false
  periodeStatus = false;
  roomId: number;
  clickedPricePeriodsId: number[];
  helpclicked:number[];

  constructor(private router: Router, private accomService: AccommodationService, private route: ActivatedRoute, private dialog: MatDialog) {
    this.clickedPricePeriodsId = new Array();
    this.clickedPricePeriodsId.includes(30);
    this.id = this.route.snapshot.params['id'];
    this.accomService.getAllRoomsTypeFromAccommodation(this.id).subscribe(
        accdata => {
          this.roomType = accdata , console.log(this.roomType);
      
        },
        err => console.log(err)
    );
    console.log(this.id);
  }

  ngOnInit() {
    this.getRoomsName();

    
    
  }

  includesPricePeriodeId(roomTypeId): boolean{
   // this.getPricePeriode(roomTypeId);
    if(this.clickedPricePeriodsId.includes(roomTypeId))
      return true;
    else
      return false;

  }

  getPricePeriode(roomTypeId) {
    if(!this.clickedPricePeriodsId.includes(roomTypeId)){ //when button open priceperiod clicked first time
      this.clickedPricePeriodsId.push(roomTypeId);
    }
    else{  // for turn off price period by id
      let i = 0;
      let helpArray = new Array();
      for(i=0;i<this.clickedPricePeriodsId.length;i++){
        if(this.clickedPricePeriodsId[i]!==roomTypeId)
          helpArray.push(this.clickedPricePeriodsId[i]);
      }
      this.clickedPricePeriodsId=helpArray;

    }
       let duzina= this.clickedPricePeriodsId.length;
    this.roomId=roomTypeId;
    console.log("last index : " + duzina + this.clickedPricePeriodsId[duzina-1] )

    

/*
    if(this.periodeStatus==false)
     this.loadPricePeriode(roomTypeId);
    else {
      this.router.navigate(['/dashboard/rooms/' + this.id], {skipLocationChange: true});
      this.periodeStatus = false;
    }
    console.log('array of clickedpriceperiods should be: ' + this.clickedPricePeriodsId + ' include: ' +     this.clickedPricePeriodsId.includes(30)
    );

    */
  }

  getRoomsName() {
    this.accomService.getAllRoomsType().subscribe(
        res => { this.roomNames = res ; console.log(res); },
        err => console.log(err)
    );
  }
  rootStat() {
    this.rommStatus = true;
  }

  loadPricePeriode(roomTypeId){
   this.accomService.getAllPricePeriodeFromAccommodation(this.id, roomTypeId).subscribe(
        res => {this.pricePeriode = res ; console.log(this.pricePeriode) ; this.periodeStatus = true;
        },
        err => console.log(err)
    );
  }

  openDialog(accommodation, roomType){
    this.dialog.open(PricePeriodeModalComponent, {data: {accommodation, roomType}}).
    afterClosed().subscribe(data => this.loadPricePeriode(this.roomId));
  }

  reload(){  //trebat ce se vjerovatno domodifikovat i definsisat u price-periode-component

    console.log("reload");
    this.periodeStatus = false;
    this.router.navigate(['/dashboard/rooms/' + this.id], {skipLocationChange: true});

    this.periodeStatus = true;
  }

  deletePricePeriode(id){
    console.log(id);

    this.dialog.open(ConfirmModalComponent, { data: { id } }).
    afterClosed().subscribe(data => this.loadPricePeriode(this.roomId));

  }

  navigateRoomGallery(accommodationId,roomId) {

    this.router.navigate(['/dashboard/rooms/gallery/' + accommodationId + '/' + roomId]);
  }

}
