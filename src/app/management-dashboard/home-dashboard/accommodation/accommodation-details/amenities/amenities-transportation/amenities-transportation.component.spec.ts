import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesTransportationComponent } from './amenities-transportation.component';

describe('AmenitiesTransportationComponent', () => {
  let component: AmenitiesTransportationComponent;
  let fixture: ComponentFixture<AmenitiesTransportationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesTransportationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesTransportationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
