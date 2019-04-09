import {Component, Inject, OnInit, Optional} from '@angular/core';
import {MAT_DIALOG_DATA, MatDialogRef} from '@angular/material';
import {AccommodationService} from '../../../../../accommodation.service';

@Component({
  selector: 'app-confirm-modal',
  templateUrl: './confirm-modal.component.html',
  styleUrls: ['./confirm-modal.component.css']
})
export class ConfirmModalComponent implements OnInit {

  pricePeriodId: number;

  constructor(private accommodationService: AccommodationService,
              @Optional() @Inject(MAT_DIALOG_DATA) public data,
              @Optional() public dialogRef: MatDialogRef<ConfirmModalComponent>
  ) {
    this.pricePeriodId = this.data.id;

    console.log('ppp' + this.data.id);
  }

  ngOnInit() {
  }

  yes(){

    console.log("clicked yes");
    console.log(this.pricePeriodId);
    this.accommodationService.deletePricesPeriodeById(this.pricePeriodId).subscribe(res => console.log(res));
  }

}
