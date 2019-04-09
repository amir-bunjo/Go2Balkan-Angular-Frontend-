import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-surroundings',
  templateUrl: './surroundings.component.html',
  styleUrls: ['./surroundings.component.css']
})
export class SurroundingsComponent implements OnInit {

  id: number;

  constructor(private route: ActivatedRoute) { 

    this.id = this.route.snapshot.params['id'];
  }

  ngOnInit() {
  }

}
