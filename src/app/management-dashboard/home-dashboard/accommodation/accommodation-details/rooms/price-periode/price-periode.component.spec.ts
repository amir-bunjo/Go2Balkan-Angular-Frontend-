import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PricePeriodeComponent } from './price-periode.component';

describe('PricePeriodeComponent', () => {
  let component: PricePeriodeComponent;
  let fixture: ComponentFixture<PricePeriodeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PricePeriodeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PricePeriodeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
