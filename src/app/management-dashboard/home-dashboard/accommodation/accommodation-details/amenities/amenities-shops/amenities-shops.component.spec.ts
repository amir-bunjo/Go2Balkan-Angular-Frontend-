import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesShopsComponent } from './amenities-shops.component';

describe('AmenitiesShopsComponent', () => {
  let component: AmenitiesShopsComponent;
  let fixture: ComponentFixture<AmenitiesShopsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesShopsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesShopsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
