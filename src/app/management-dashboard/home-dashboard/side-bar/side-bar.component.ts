import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../accommodation.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-side-bar',
  templateUrl: './side-bar.component.html',
  styleUrls: ['./side-bar.component.css']
})
export class SideBarComponent implements OnInit {

  accommodationsIdsAndNamesList: any;

  constructor(private accommodationService: AccommodationService,
              private router: Router) { }

  ngOnInit() {
      this.getAccommodationFromLoggedAccount();
  }

  getAccommodationFromLoggedAccount() {
     this.accommodationService.fetchAccommodationIdsAndNamesListFromLoggedUser().subscribe(
        response => {
          this.accommodationsIdsAndNamesList = response;
          console.log(this.accommodationsIdsAndNamesList);
        }, error => {
          console.log(error);
        }
    );
  }

    navigate(accommodationId: number) {
        this.router.navigateByUrl(`/dashboard`, {skipLocationChange: true}).then(() =>
            this.router.navigate([`/dashboard/sales/${accommodationId}`])
        );
    }

}
