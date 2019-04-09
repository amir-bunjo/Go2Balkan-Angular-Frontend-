import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesCleaningServicesComponent } from './amenities-cleaning-services.component';

describe('AmenitiesCleaningServicesComponent', () => {
  let component: AmenitiesCleaningServicesComponent;
  let fixture: ComponentFixture<AmenitiesCleaningServicesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesCleaningServicesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesCleaningServicesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
