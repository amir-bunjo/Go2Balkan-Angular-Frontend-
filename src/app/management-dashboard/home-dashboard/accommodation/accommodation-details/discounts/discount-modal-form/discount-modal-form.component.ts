import {Component, ElementRef, Inject, Input, OnInit, Optional, ViewChild} from '@angular/core';
import {Router} from '@angular/router';
import {AccommodationService} from '../../../../../accommodation.service';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {MatDialog, MAT_DIALOG_DATA, MatDialogRef} from '@angular/material';
import {DiscountModel} from '../discount.model';


@Component({
  selector: 'app-discount-modal-form',
  templateUrl: './discount-modal-form.component.html',
  styleUrls: ['./discount-modal-form.component.css']
})
export class DiscountModalFormComponent implements OnInit {

  @ViewChild('btnClose') btnClose: ElementRef;
  pressedDiscountType=1;
  pressed=1;
  discountModel: DiscountModel;
  discountForm: FormGroup;
  title: string;


  constructor(private route: Router, private accoService: AccommodationService,
              @Optional() @Inject(MAT_DIALOG_DATA) public data,
              @Optional() public dialogRef: MatDialogRef<DiscountModalFormComponent>
  ) {

    this.discountModel = this.data && this.data.discount ? this.data.discount : new DiscountModel();
    this.pressed = this.data!=null && this.data.pressed!=null ? this.data.pressed : 1;
    this.title = this.data.discount? 'Edit Discount' : 'Add Discount';
  }

  ngOnInit() {

    this.createDiscount();
  }

  saveDiscountType() {

    this.discountModel.accommodation = this.data.accommodationId;
    this.discountModel.discountName = this.discountForm.value.discountname;
    this.discountModel.priceStartDate = this.discountForm.value.startdate.toString();
    this.discountModel.priceEndDate = this.discountForm.value.enddate.toString();
    this.discountModel.fixedCalculation = this.discountForm.value.fixedcalculation == '0' ? 0 : 1;
    this.discountModel.discountFixedAmount = this.discountForm.value.fixedcalculation == '1' ? this.discountForm.value.discountamount : 0.00;
    this.discountModel.discountPercentageAmount = this.discountForm.value.fixedcalculation == '0' ? this.discountForm.value.discountamount : 0.00;
    this.discountModel.minAge = this.discountForm.value.minage;
    this.discountModel.maxAge = this.discountForm.value.maxage;
    this.discountModel.minNum = this.discountForm.value.minnum;
    this.discountModel.maxNum = this.discountForm.value.maxnum;


    this.accoService.saveDiscounts(this.discountModel,this.pressed).subscribe(
        saveres => {

          this.dialogRef.close({ succes: true});
          console.log(saveres);
        },
        err => console.log(err)
    );


    console.log(this.discountForm);
  }

  createDiscount() {

    this.discountForm = new FormGroup({
      'discountname': new FormControl(this.discountModel.discountName,[Validators.required]),
      'startdate': new FormControl(this.discountModel.priceStartDate,[Validators.required]),
      'enddate': new FormControl(this.discountModel.priceEndDate,[Validators.required]),
      'customname': new FormControl(null),
      'discountamount' : this.discountModel.discountFixedAmount==0 ? new FormControl(this.discountModel.discountPercentageAmount,[Validators.required]) : new FormControl(this.discountModel.discountFixedAmount,[Validators.required]),
      'fixedcalculation': this.discountModel.discountFixedAmount==0 ? new FormControl(0) : new FormControl(1),
      'minage': new FormControl(this.discountModel.minAge),
      'maxage': new FormControl(this.discountModel.maxAge),
      'minnum': new FormControl(this.discountModel.minNum),
      'maxnum': new FormControl(this.discountModel.maxNum),
      'desc': new FormControl(this.discountModel.desc),

    });

  }




}
