import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../../accommodation.service';
import {MatDialog} from '@angular/material';
import {DiscountModel} from './discount.model';
import {DiscountModalFormComponent} from './discount-modal-form/discount-modal-form.component';

@Component({
  selector: 'app-discounts',
  templateUrl: './discounts.component.html',
  styleUrls: ['./discounts.component.css']
})
export class DiscountsComponent implements OnInit {


  id: any;

  disDialogStatus = false;
  discountType: any;
  pressedDiscountType = "Age";
  pressed = 1;
  pressedActive = true;
  editStatus = false;
  editDiscountObject: any;

  // deleteStatus = false;


  constructor(private router: Router, private accomService: AccommodationService, private route: ActivatedRoute, public dialog: MatDialog) {
    this.id = this.route.snapshot.params['id'];
    console.log('Id accomm should be ' + this.id);
    this.loadDiscounts();

  }
  ngOnInit() {}


  pressMisc(){

    this.pressedDiscountType = "Miscellaneous";
    this.pressed = 3;
    this.loadDiscounts();
  }
  pressAge() {
    this.pressedDiscountType = "Age";
    this.pressed = 1;
    this.loadDiscounts();
  }
  pressQuan(){
    this.pressedDiscountType = "Quantity";
    this.pressed = 2;
    this.loadDiscounts();
  }

  isActive( date: any ) {  // funkcija za ispitivanje da li je poslati datum aktivan ili istekao

    if (Date.parse(date) - Date.now() > 0) {
      return false;
    } else {
      return true;
    }
  }
 
  pressedExpiredDiscount(){
    this.pressedActive = false;
  }
  pressedActiveDiscount(){
    this.pressedActive = true;
  }

  loadDiscounts(){

    this.accomService.getAllDiscountsAge(this.id, this.pressed).subscribe(
        accdata => {
          this.discountType = accdata , console.log(this.discountType);
        },
        err => console.log(err)
    );
  }

  deleteDiscount(id){
    console.log("kliknuto na delete");

    this.accomService.deleteDiscountById(id,this.pressed).subscribe(
        data => {
          console.log(data);
          this.loadDiscounts();
        });
  }

  updateDiscount(discount: DiscountModel, pressed, accommodationId){

    console.log("kliknuto na edit1" );
    console.log(discount);
    this.disDialogStatus = false;  // nece biti potrebno ukoliko se budo koristio jedan modal

    this.dialog.open(DiscountModalFormComponent, {
      data: { discount , pressed , accommodationId }
    });


    //this.editStatus= true;
  }
  addNewDiscount(pressed, accommodationId){

    // this.disDialogStatus=true;   // okidac za dicount modal (stara forma za dodavanje diskaunta)

    this.dialog.open(DiscountModalFormComponent, {
      data: {pressed, accommodationId}}).afterClosed().subscribe(res => { this.loadDiscounts(); } );
  }


}
