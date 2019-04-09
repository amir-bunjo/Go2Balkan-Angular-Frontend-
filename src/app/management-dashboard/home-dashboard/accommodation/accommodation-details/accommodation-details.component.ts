import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {AccommodationService} from '../../../accommodation.service';

@Component({
  selector: 'app-accommodation-details',
  templateUrl: './accommodation-details.component.html',
  styleUrls: ['./accommodation-details.component.css']
})
export class AccommodationDetailsComponent implements OnInit {

  accommodation: any;
  id: any;
  constructor(private router: Router, private accoService: AccommodationService, private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.params.subscribe(
        params => {
          this.id = params['id'];

        }
    );
  }

}
