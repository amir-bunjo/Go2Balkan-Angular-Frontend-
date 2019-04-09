import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesActivitiesComponent } from './amenities-activities.component';

describe('AmenitiesActivitiesComponent', () => {
  let component: AmenitiesActivitiesComponent;
  let fixture: ComponentFixture<AmenitiesActivitiesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesActivitiesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesActivitiesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
