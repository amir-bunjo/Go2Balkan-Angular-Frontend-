import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesFoodDrinkComponent } from './amenities-food-drink.component';

describe('AmenitiesFoodDrinkComponent', () => {
  let component: AmenitiesFoodDrinkComponent;
  let fixture: ComponentFixture<AmenitiesFoodDrinkComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesFoodDrinkComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesFoodDrinkComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
