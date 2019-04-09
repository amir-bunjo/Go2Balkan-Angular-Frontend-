import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AccommodationService } from 'src/app/management-dashboard/accommodation.service';
import {HttpClient, XhrFactory} from '@angular/common/http';


@Component({
  selector: 'app-room-gallery',
  templateUrl: './room-gallery.component.html',
  styleUrls: ['./room-gallery.component.css']
})
export class RoomGalleryComponent implements OnInit {

  helpArray: string[] = new Array();
  pom:any;
  roomType: any;
  accommodationId: number;
  roomId: number;
  clickedRoomId: number;
  picArray: string[];
  updatePicName: string[] = new Array(); 
  selectedFile: File;
  fileToShare : any = File;
  editedImage : number;
  fileList: FileList;
  fileDb64: any;
  image: any;
 
  constructor(private activatedRoute: ActivatedRoute,private accomService: AccommodationService, private http: HttpClient) {
    this.accommodationId = this.activatedRoute.snapshot.params['id'];
    this.clickedRoomId = this.activatedRoute.snapshot.params['rid'];
 
    this.getRoomPics(this.accommodationId);


  
   }

  ngOnInit() {
    
    
  }

  getRoomPics(id){

    this.accomService.getAllRoomsTypeFromAccommodation(this.accommodationId).subscribe(
      accdata => {
        
        this.pom = accdata ,console.log("romtype za galery");
       let i=0;
        for (let f of this.pom){
          if(f.id == this.clickedRoomId){
            this.picArray = f.roomPics.split(',');
            i++;
          }
        }
    let j;
    for(j=0;j<this.picArray.length;j++)
      this.updatePicName[j] = 'Chose File';
      
      
        
        console.log(this.picArray);

      },
      err => console.log(err)
  );

  }

  onFileSelected(event,updtImgId){

    this.editedImage = updtImgId;
    var cloudinary_url = 'https://api.cloudinary.com/v1_1/dacid3ish/image/upload';
    var preset = 'doymgzvj' ;

    console.log("promjenjeno: " + updtImgId);
    this.updatePicName[updtImgId] = event.target.files[0].name;

    this.fileList = event.target.files;

    const file = event.target.files[0];
    this.fileToShare = file;

    this.selectedFile = this.fileList.item(0);
    
    console.log(this.selectedFile);

    console.log(this.fileList);

    var selectFile = this.selectedFile;

    var myReader: FileReader = new FileReader();
    
    myReader.readAsDataURL(this.selectedFile);
    
    myReader.onloadend = (e) => this.image = myReader.result; // converting to base 64
    

    var formData = new FormData();
    

   
    
    formData.append('picture', this.selectedFile);
    formData.append('upload-preset', preset);

  


}
upload(){



  console.log('hocu uplodovat');
  console.log(this.image);


  var url = 'https://api.cloudinary.com/v1_1/dacid3ish/image/upload';
  var preset = 'doymgzvj' ;

  const form = new FormData();
  form.append('file' , this.fileToShare);

 
  const arrayToString = this.picArray.toString();

  console.log("string array: " + arrayToString );

  this.accomService.pushFileToStorage(this.image,this.clickedRoomId,this.picArray,arrayToString,this.editedImage).subscribe(res =>{
    
    this.getRoomPics(this.accommodationId);
    
    console.log(res);
  });

 //this.accomService.pushFileToStorage(this.image).subscribe(event => console.log(event));


}

}
/*
axios({
      url: cloudinary_url,
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      data: formData
    }).then( res => console.log(res)).catch(err => console.log(err));  



    xhr.open('POST', cloudinary_url, true);
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
    xhr.send(formData);
*/