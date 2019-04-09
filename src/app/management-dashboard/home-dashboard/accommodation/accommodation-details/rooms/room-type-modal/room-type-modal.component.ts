import {Component, ElementRef, Input, OnInit, ViewChild} from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {Router} from '@angular/router';
import {AccommodationService} from '../../../../../accommodation.service';
import {fakeAsync} from '@angular/core/testing';
import { RoomsModel } from '../rooms.model';

@Component({
  selector: 'app-room-type-modal',
  templateUrl: './room-type-modal.component.html',
  styleUrls: ['./room-type-modal.component.css']
})
export class RoomTypeModalComponent implements OnInit {

  roomTypeForm: FormGroup;
  @ViewChild('btnClose') btnClose: ElementRef;
  @Input() roomTypes: any;
  @Input() id;
  accommodationTypes: any;
  roomNameData = null;
  locationResult: any;
  stras = [1, 2, 3, 4, 5];
  twinStatus = false;
  fullStatus = false;
  queenStatus = false;
  extraStatus = false;
  adultStatus = false;
  roomModel: RoomsModel;


  constructor(private route: Router, private accoService: AccommodationService) {

    this.roomModel = new RoomsModel();
    this.roomTypeForm = new FormGroup({
      'roomtype': new FormControl(null, [Validators.required]),
      'roomname': new FormControl(null, [Validators.required]),
      'customname': new FormControl(null),
      'roomnumber': new FormControl(null, [Validators.required]),
      'roomsize': new FormControl(null, [Validators.required]),
      'desc': new FormControl(),
      'twin': new FormControl(false),
      'full': new FormControl(false),
      'queen': new FormControl(false),
      'twinselect': new FormControl('1'),
      'fullselect': new FormControl('1'),
      'queenselect': new FormControl('1'),
      'extra': new FormControl(false),
      'extraselect': new FormControl('1'),
      'adult': new FormControl(false),
      'adultprice': new FormControl(null),

    });
  }

  ngOnInit() {
      this.roomTypeForm.valueChanges.subscribe(
        form => {
          if (form.roomtype != null) {
            this.roomNameData = form.roomtype ['cbRoomTypeNames'];
            console.log(form);
          }
          if( form.twin == true)
            this.twinStatus = true;
          else
            this.twinStatus = false ;

          if( form.full == true)
            this.fullStatus = true;
          else
            this.fullStatus = false ;

          if( form.queen == true)
            this.queenStatus = true;
          else
            this.queenStatus = false ;

          if( form.extra == true)
            this.extraStatus = true;
          else
            this.extraStatus = false ;

          if( form.adult == true)
            this.adultStatus = true;
          else
            this.adultStatus = false ;

        }
    );
  }

  saveRoomType() {

    this.roomModel.accommodation = this.id;
    this.roomModel.roomType = this.roomTypeForm.value.roomtype.toString();
    this.roomModel.roomName = this.roomTypeForm.value.roomname.roomTypeName;
    this.roomModel.numberOfRooms = this.roomTypeForm.value.roomnumber;
    this.roomModel.size = this.roomTypeForm.value.roomsize;

    console.log("ispod bi se trebao ispisat objekat za prosljedivanje");
    console.log(this.roomModel);

    this.accoService.saveOrUpdateRoomType(this.roomModel).subscribe(res => console.log(res));
  
   console.log(this.roomTypeForm);

  }


}
