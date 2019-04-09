import {Injectable} from '@angular/core';
import {HttpClient, HttpRequest, HttpEvent, HttpHeaders} from '@angular/common/http';
import {Router} from '@angular/router';
import {DataTableItem} from './home-dashboard/accommodation/accommodation-sales/data-table/data-table-datasource';
import { Observable } from 'rxjs';
import { RequestOptions } from '@angular/http';
import { FormGroup } from '@angular/forms';

@Injectable()
export class AccommodationService {
    constructor(private http: HttpClient, private router: Router) {}

    getAccommodationById(accommodationId){
        return this.http.get( 'http://localhost:8082/api/accommodation/' + accommodationId);
    }

    getAccommodationFromLoggedAccount() {
        return this.http.get( 'http://localhost:8082/api/accommodation');
    }

    getAccommodationTypes() {
        return this.http.get( 'http://localhost:8082/api/accommodation/types');
    }

    locationAutocomplete(city: string) {
        return this.http.get('http://localhost:8082/api/accommodation/location/' + city);
    }

    saveAccommodation(accommodation: any) {
        return this.http.post('http://localhost:8082/api/accommodation/saveorupdate', accommodation );
    }

    saveAmenitiesByAccommodationId(activityStr: any, accommodationId: number, amenityType: string) {
        return this.http.post(`http://localhost:8082/api/accommodation/amenities/${amenityType}/saveorupdate/${accommodationId}`, activityStr );
    }

    fetchAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get(`http://localhost:8082/api/accommodation/${accommodationId}`);
    }

    fetchStaffLanguagesFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get(`http://localhost:8082/api/accommodation/stafflanguages/${accommodationId}`);
    }

    fetchCreditCardsFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get(`http://localhost:8082/api/accommodation/creditcards/${accommodationId}`);
    }

    fetchBreakfastsFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get(`http://localhost:8082/api/accommodation/breakfasts/${accommodationId}`);
    }

    fetchInternetOptionsFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get<string[]>(`http://localhost:8082/api/accommodation/internetoptions/${accommodationId}`);
    }

    fetchParkingOptionsFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get<string[]>(`http://localhost:8082/api/accommodation/parkingoptions/${accommodationId}`);
    }

    fetchPetsPolicyFromAccommodationByAccommodationId(accommodationId: number) {
        return this.http.get<string[]>(`http://localhost:8082/api/accommodation/petspolicy/${accommodationId}`);
    }

    fetchAccommodationIdsAndNamesListFromLoggedUser() {
        return this.http.get(`http://localhost:8082/api/accommodation/idsandnameslist`);
    }

    fetchAccommodationSalesListByAccommodationId(accommodationId: number) {
        console.log('poziva se funkcija za lodanje salesa ' + accommodationId);
        return this.http.get<DataTableItem[]>(`http://localhost:8082/api/booking/${accommodationId}`);
    }
   
    saveOrUpdateStaffLanguagesList(staffLanguages: string[], accommodationId: number) {
        return this.http.post<string[]>(`http://localhost:8082/api/accommodation/stafflanguages/saveorupdate/${accommodationId}`, staffLanguages);
    }

    saveOrUpdateCreditCardsList(creditCards: string[], accommodationId: number) {
        return this.http.post<string[]>(`http://localhost:8082/api/accommodation/creditcards/saveorupdate/${accommodationId}`, creditCards);
    }

    saveOrUpdateBreakfastsList(breakfasts: string[], accommodationId: number) {
        return this.http.post<string[]>(`http://localhost:8082/api/accommodation/breakfasts/saveorupdate/${accommodationId}`, breakfasts);
    }

    saveOrUpdateInternetOptionsStr(internetFormSendingStr: string, accommodationId: number) {
        return this.http.post<string>(`http://localhost:8082/api/accommodation/internetoptions/saveorupdate/${accommodationId}`, internetFormSendingStr);
    }

    saveOrUpdateParkingOptionsStr(parkingFormSendingStr: string, accommodationId: number) {
        return this.http.post<string>(`http://localhost:8082/api/accommodation/parkingoptions/saveorupdate/${accommodationId}`, parkingFormSendingStr);
    }

    saveOrUpdatePetsPolicyStr(petsPolicyFormSendingStr: string, accommodationId: number) {
        return this.http.post<string>(`http://localhost:8082/api/accommodation/petspolicy/saveorupdate/${accommodationId}`, petsPolicyFormSendingStr);
    }

    saveOrUpdatePropertyInfos(accommodationData: any) {
        return this.http.post(`http://localhost:8082/api/accommodation/propertyinfos/saveorupdate`, accommodationData);
    }

    getCbAccommodationStaffLanguages() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbstafflanguages`);
    }

    getCbAccommodationCreditCards() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbcreditcards`);
    }

    getCbAccommodationBreakfasts() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbbreakfasts`);
    }

    getCbInternetConnectionTypes() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbinternet/connectiontypes`);
    }

    getCbInternetConnectionLocations() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbinternet/connectionlocations`);
    }

    getCbCancellationPolicies() {
        return this.http.get(`http://localhost:8082/api/accommodation/cbcancellationpolicies`);
    }

    getAllActivties() {
        return this.http.get( 'http://localhost:8082/api/activities');

    }
    getAllFrontDeskService() {
        return this.http.get( 'http://localhost:8082/api/accommodation/frontdesk');
    }

    getAllCommonAreas() {
        return this.http.get( 'http://localhost:8082/api/accommodation/commonareas');
    }

    getAllEntertainment() {
        return this.http.get( 'http://localhost:8082/api/accommodation/entertainment');
    }

    getAllCleaning() {
        return this.http.get( 'http://localhost:8082/api/accommodation/cleaning');
    }
    getAllFood() {
        return this.http.get( 'http://localhost:8082/api/accommodation/food');// localhost
    }

    getAllSPAPool() {
        return this.http.get( 'http://localhost:8082/api/accommodation/pool');
    }

    getAllTransportation() {
        return this.http.get( 'http://localhost:8082/api/accommodation/transportation');
    }

    getAllFacilitiesn() {
        return this.http.get( 'http://localhost:8082/api/accommodation/facilities');
    }

    getAllMiscellaneous() {
        return this.http.get( 'http://localhost:8082/api/accommodation/miscellaneous');
    }

    getAllShops() {
        return this.http.get( 'http://localhost:8082/api/accommodation/shops');
    }

    getAllRoomsTypeFromAccommodation(accommodationId ) {
        return this.http.get( 'http://localhost:8082/api/accommodation/roomtype/' + accommodationId);
    }
    getAllPricePeriodeFromAccommodation(accommodationId , roomTypeId) {
        return this.http.get( 'http://localhost:8082/api/accommodation/pricesperiod/' + accommodationId + '/' + roomTypeId);
    }

    saveOrUpdateRoomType(roomType){
        return this.http.post('http://localhost:8082/api/accommodation/roomtype/saveorupdate', roomType);
    }


    saveOrUpdatePricePeriode(pricePeriode){
        return this.http.post('http://localhost:8082/api/accommodation/pricesperiod/saveorupdate',pricePeriode);
    }

    getAllRoomsType() {
        return this.http.get( 'http://localhost:8082/api/room/alltypes');
    }
    deletePricesPeriodeById(id: number){
        console.log("TREBALA BI SE POZVAT GLAVNA FUNKCIJA ZA BRISANJE");
        return this.http.delete( 'http://localhost:8082/api/accommodation/pricesperiod/' + id );
    }


    getAllDiscountsAge(accommodationId , pressedDisc){
        return this.http.get( 'http://localhost:8082/api/accommodation/discount/'+ pressedDisc +'/' + accommodationId );

    }

    saveDiscounts(discount: any, pressedDisc){

        return this.http.post('http://localhost:8082/api/accommodation/discount/'+ pressedDisc +'/saveorupdate',  discount);
    }

    getDiscountById(id){
        return this.http.get( 'http://localhost:8082/api/accommodation/discount/' + id );
    }
    deleteDiscountById(id, discountType){
       
        return this.http.delete( 'http://localhost:8082/api/accommodation/discount/delete/' + discountType + '/' + id );
    }
    updateDiscount(id, discount){

        console.log( "update: " + id );
        return this.http.patch( 'http://localhost:8082/api/accommodation/discount/delete/' + id, discount)


    }

    fetchBookingG2BFeeByAccommodationId(accommodationId: number) {
        return this.http.get(`http://localhost:8082/api/booking/g/${accommodationId}`);
    }

    pushFileToStorage(image: string, roomId: number, pictureArray: String[],pastImageArray: string,imgToEdit: number): Observable<any> {
   
        var object = {
            imgUrl: image,
            urlsInDatabase: pictureArray,
            imageToEdit: imgToEdit
          };

        return this.http.post<string>(`http://localhost:8082/api/room/image/upload/${roomId}`, object);
      }
}
 