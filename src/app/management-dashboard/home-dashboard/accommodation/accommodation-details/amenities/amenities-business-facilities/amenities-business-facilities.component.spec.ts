import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesBusinessFacilitiesComponent } from './amenities-business-facilities.component';

describe('AmenitiesBusinessFacilitiesComponent', () => {
  let component: AmenitiesBusinessFacilitiesComponent;
  let fixture: ComponentFixture<AmenitiesBusinessFacilitiesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesBusinessFacilitiesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesBusinessFacilitiesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
