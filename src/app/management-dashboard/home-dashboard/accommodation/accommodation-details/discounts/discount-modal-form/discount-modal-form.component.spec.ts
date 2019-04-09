import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DiscountModalFormComponent } from './discount-modal-form.component';

describe('DiscountModalFormComponent', () => {
  let component: DiscountModalFormComponent;
  let fixture: ComponentFixture<DiscountModalFormComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DiscountModalFormComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DiscountModalFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
