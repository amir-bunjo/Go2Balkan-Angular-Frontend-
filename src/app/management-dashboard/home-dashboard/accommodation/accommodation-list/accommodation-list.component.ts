import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../accommodation.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-accommodation-list',
  templateUrl: './accommodation-list.component.html',
  styleUrls: ['./accommodation-list.component.css']
})
export class AccommodationListComponent implements OnInit {
  accommodationsList: any;

  constructor(private accoService: AccommodationService, private router: Router) { }

  ngOnInit() {
    this.accoService.getAccommodationFromLoggedAccount().subscribe(
        accResp => {
          this.accommodationsList = accResp;
          console.log(this.accommodationsList);
        },
        error1 => console.log(error1)
    );
  }

  navigate(id) {
      console.log(id);
      this.router.navigate(['/dashboard/details/' + id], { skipLocationChange: true});

  }

}
