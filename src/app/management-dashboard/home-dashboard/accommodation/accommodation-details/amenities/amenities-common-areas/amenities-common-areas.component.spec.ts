import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AmenitiesCommonAreasComponent } from './amenities-common-areas.component';

describe('AmenitiesCommonAreasComponent', () => {
  let component: AmenitiesCommonAreasComponent;
  let fixture: ComponentFixture<AmenitiesCommonAreasComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AmenitiesCommonAreasComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AmenitiesCommonAreasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
