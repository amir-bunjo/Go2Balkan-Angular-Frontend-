import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesEntertainmentComponent } from './amenities-entertainment.component';

describe('AmenitiesEntertainmentComponent', () => {
  let component: AmenitiesEntertainmentComponent;
  let fixture: ComponentFixture<AmenitiesEntertainmentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesEntertainmentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesEntertainmentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
