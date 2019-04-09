import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesFrontdeskComponent } from './amenities-frontdesk.component';

describe('AmenitiesFrontdeskComponent', () => {
  let component: AmenitiesFrontdeskComponent;
  let fixture: ComponentFixture<AmenitiesFrontdeskComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesFrontdeskComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesFrontdeskComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
