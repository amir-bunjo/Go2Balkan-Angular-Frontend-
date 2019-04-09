import { Component, OnInit } from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import { AccommodationService } from 'src/app/management-dashboard/accommodation.service';

@Component({
  selector: 'app-accommodation-sales',
  templateUrl: './accommodation-sales.component.html',
  styleUrls: ['./accommodation-sales.component.css']
})
export class AccommodationSalesComponent implements OnInit {

  accommodationId: number;
  bookingModel: any;

  constructor(private activatedRoute: ActivatedRoute, private accoService: AccommodationService) {
    this.accommodationId=this.activatedRoute.snapshot.params['id'];
    console.log('accomodacijski id bi treboo bit: ' + this.accommodationId );
   }

  ngOnInit() {
  }

  fetch(){
    this.accoService.fetchBookingG2BFeeByAccommodationId(3).subscribe( response => {
      this.bookingModel= response;
      console.log(response)
    });

    
    
  }


}
