import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesPoolSpaComponent } from './amenities-pool-spa.component';

describe('AmenitiesPoolSpaComponent', () => {
  let component: AmenitiesPoolSpaComponent;
  let fixture: ComponentFixture<AmenitiesPoolSpaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesPoolSpaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesPoolSpaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
