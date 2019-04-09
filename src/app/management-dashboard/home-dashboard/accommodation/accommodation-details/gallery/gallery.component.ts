import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-gallery',
  templateUrl: './gallery.component.html',
  styleUrls: ['./gallery.component.css']
})
export class GalleryComponent implements OnInit {

  id: number;
  constructor(private route: ActivatedRoute) { 
    this.id = this.route.snapshot.params['id'];
  }

  ngOnInit() {
  }

}
