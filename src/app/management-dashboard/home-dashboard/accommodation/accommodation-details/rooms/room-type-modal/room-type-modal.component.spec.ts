import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RoomTypeModalComponent } from './room-type-modal.component';

describe('RoomTypeModalComponent', () => {
  let component: RoomTypeModalComponent;
  let fixture: ComponentFixture<RoomTypeModalComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RoomTypeModalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RoomTypeModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
