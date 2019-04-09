import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AccommodationSalesComponent } from './accommodation-sales.component';

describe('AccommodationSalesComponent', () => {
  let component: AccommodationSalesComponent;
  let fixture: ComponentFixture<AccommodationSalesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AccommodationSalesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AccommodationSalesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
