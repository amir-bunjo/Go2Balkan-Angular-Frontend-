import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesMiscellaneousComponent } from './amenities-miscellaneous.component';

describe('AmenitiesMiscellaneousComponent', () => {
  let component: AmenitiesMiscellaneousComponent;
  let fixture: ComponentFixture<AmenitiesMiscellaneousComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesMiscellaneousComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesMiscellaneousComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
