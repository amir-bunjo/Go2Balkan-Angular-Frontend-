import { Component, OnInit } from '@angular/core';
import {AccommodationService} from '../../../../../accommodation.service';

@Component({
  selector: 'app-cancellation',
  templateUrl: './cancellation.component.html',
  styleUrls: ['./cancellation.component.css']
})
export class CancellationComponent implements OnInit {

  choice = '2 days';

  inputNumber = 30;

  cbCancellationPolicies: any;

  constructor(private accommodationService: AccommodationService) { }

  ngOnInit() {
      this.getCbAccommodationCancellationPolicies();
  }

  simpleDisplayDropdownChoice(choice: string) {
    this.choice = choice;
  }

  getCbAccommodationCancellationPolicies() {
    this.accommodationService.getCbCancellationPolicies().subscribe(
      response => {
        this.cbCancellationPolicies = response;
      }, error => {
        console.log(error);
      }
    );
  }

}
