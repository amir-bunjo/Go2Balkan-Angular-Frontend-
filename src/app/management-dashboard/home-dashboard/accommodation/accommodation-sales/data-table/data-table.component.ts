import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator, MatSort } from '@angular/material';
import {DataTableDataSource, DataTableItem} from './data-table-datasource';
import {AccommodationService} from '../../../../accommodation.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-data-table',
  templateUrl: './data-table.component.html',
  styleUrls: ['./data-table.component.css']
})
export class DataTableComponent implements OnInit {
  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;
  dataSource: DataTableDataSource;

  accommodationId: number;

  ACCOMMODATION_SALES_LIST: DataTableItem[];

  bookingData: any;

  constructor(private accommodationService: AccommodationService,
              private activatedRoute: ActivatedRoute) {}

  /** Columns displayed in the table. Columns IDs can be added, removed, or reordered. */
  displayedColumns = ['clientName', 'room', 'price', 'paidOrRemaining', 'startDate', 'endDate', 'reservationDate', 'gatewayId'];

  ngOnInit() {
    this.accommodationId = this.activatedRoute.snapshot.params['id'];

    this.fetchAccommodationSalesListByAccommodationId();

    this.fetchBookingByAccommodationId();

    setTimeout(() => {
        this.dataSource = new DataTableDataSource(this.paginator, this.sort, this.ACCOMMODATION_SALES_LIST);
    }, 400);

    console.log('loadin resurs bi trebo bit: ' + this.dataSource)

  }

  fetchAccommodationSalesListByAccommodationId() {
    this.accommodationService.fetchAccommodationSalesListByAccommodationId(this.accommodationId).subscribe(
        response => {
          this.ACCOMMODATION_SALES_LIST = response;
          console.log('loadin resurs bi trebo bit: ' + this.dataSource)
        }, error => {
          console.log(error);
        }
    );
  }

  fetchBookingByAccommodationId() {
    this.accommodationService.fetchBookingG2BFeeByAccommodationId(this.accommodationId).subscribe(
        response => {
          this.bookingData = response;
          console.log('loadin resurs bi trebo bit: ' + this.bookingData)
        }, error => {
          console.log(error);
        }
    );
  }
}
