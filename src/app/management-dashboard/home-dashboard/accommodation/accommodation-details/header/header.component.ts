import {Component, Input, OnInit} from '@angular/core';
import {Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  @Input() idAccommodation: any;
  constructor(private router: Router) { }

  ngOnInit() {
  }

  navigateAmenities () {
    this.router.navigate(['/dashboard/amenities/' + this.idAccommodation]);
  }

  navigateRooms () {
    this.router.navigate(['/dashboard/rooms/' + this.idAccommodation]);
  }

  navigateDetails () {
    this.router.navigate(['/dashboard/details/' + this.idAccommodation], { skipLocationChange: true});
  }

  navigateDiscounts () {
    this.router.navigate( ['/dashboard/discounts/' + this.idAccommodation], { skipLocationChange: true});
  }

  navigateSurroundings () {
    this.router.navigate( ['/dashboard/surroundings/' + this.idAccommodation], { skipLocationChange: true});
  }

  navigateGallery() {

    this.router.navigate(['/dashboard/gallery/' + this.idAccommodation], { skipLocationChange: true});
  }

}
