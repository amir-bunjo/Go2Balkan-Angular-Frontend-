import {Injectable} from "@angular/core";
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Router} from "@angular/router";
import {Token} from '../shared/models/token';


@Injectable()
export class AuthService {

    constructor(private http: HttpClient, private router: Router) {}

    getAccountByUser(userName: string) {
        return this.http.get( 'http://localhost:8082/api/account/registration/' + userName);
    }

    handleLogin(login: any) {
        return this.http.post('http://localhost:8082/authenticate', login);
    }

    saveAccount(account: any) {
        return this.http.post('http://localhost:8082/api/account/registration', account);

    }

    isAuthentificated() {
        if (localStorage.getItem('token') === null) return false
        else return true;
    }

    logout() {
        localStorage.clear();
        this.router.navigate(['/']);
    }

    getLoggedAccount() {
        return this.http.get('http://localhost:8082/api/account/userdetails');
    }
}
