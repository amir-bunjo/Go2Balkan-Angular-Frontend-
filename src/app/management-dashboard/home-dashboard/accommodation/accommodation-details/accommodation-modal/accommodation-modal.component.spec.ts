import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AccommodationModalComponent } from './accommodation-modal.component';

describe('AccommodationModalComponent', () => {
  let component: AccommodationModalComponent;
  let fixture: ComponentFixture<AccommodationModalComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AccommodationModalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AccommodationModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
