import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {Router} from '@angular/router';
import {AccommodationService} from '../../../../accommodation.service';


@Component({
    selector: 'app-accommodation-modal',
    templateUrl: './accommodation-modal.component.html',
    styleUrls: ['./accommodation-modal.component.css']
})
export class AccommodationModalComponent implements OnInit {
    accommodationForm: FormGroup;
    @ViewChild('btnClose') btnClose: ElementRef;
    accommodationTypes: any;
    locationResult: any;
    stras = [1, 2, 3, 4, 5];

    constructor(private route: Router, private accoService: AccommodationService) {
        this.accommodationForm = new FormGroup({
            'propertytype': new FormControl(null, [Validators.required]),
            'propertyname': new FormControl(null, [Validators.required]),
            'emailaccommodation': new FormControl(null, [Validators.required, Validators.email]),
            'address': new FormControl(null, [Validators.required]),
            'city': new FormControl(null, [Validators.required]),
            'phone': new FormControl(null, [Validators.required]),
            'site': new FormControl(null, [Validators.required]),
            'stars': new FormControl(null, [Validators.required]),
        });
    }

    ngOnInit() {
        this.accoService.getAccommodationTypes().subscribe(
            res => {
                this.accommodationTypes = res;
                console.log(this.accommodationTypes);
            },
            err => console.log(err)
        );


        this.accommodationForm.valueChanges.subscribe(
            city => {
                if (city.city != null) {
                    this.accoService.locationAutocomplete(city.city).subscribe(
                        data => {
                            this.locationResult = data;
                            console.log(data);
                        }
                    );
                }
            }
        );
    }

    saveAccommodation() {
        let loca = this.accommodationForm.value.city;
        const city = loca.substr(0, loca.indexOf(','));
        loca = loca.substr(loca.indexOf(',') + 1, loca.length);
        const zip = loca.substr(0, loca.indexOf(','));
        loca = loca.substr(loca.indexOf(',') + 1, loca.length);
        const country = loca;
        const rentType = this.accommodationForm.value.propertytype.rentType;
        const typeName = this.accommodationForm.value.propertytype.typeName;
        const accommodation = {
            'accommodationType': typeName,
            'balkanRegion': true,
            'address': this.accommodationForm.value.address,
            'city': city,
            'email': this.accommodationForm.value.emailaccommodation,
            'name': this.accommodationForm.value.propertyname,
            'phone': this.accommodationForm.value.phone,
            'rentType': rentType,
            'state': country,
            'isActive': false,
            'web': this.accommodationForm.value.site,
            'zip': zip,
            'rank': this.accommodationForm.value.stars
        };

        this.accoService.saveAccommodation(accommodation).subscribe(
            saveres => {
                this.btnClose.nativeElement.click();
                this.route.navigate(['dashboard']);
            },
            err => console.log(err)
        );

    }


}
