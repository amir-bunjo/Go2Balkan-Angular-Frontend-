import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PricePeriodeModalComponent } from './price-periode-modal.component';

describe('PricePeriodeModalComponent', () => {
  let component: PricePeriodeModalComponent;
  let fixture: ComponentFixture<PricePeriodeModalComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PricePeriodeModalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PricePeriodeModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
