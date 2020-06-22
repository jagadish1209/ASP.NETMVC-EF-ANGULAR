import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable()
export class AppService {
  constructor(private http: HttpClient) {
  }

  ConvertRtfToHtml(rtfText: any){
    // const paramsValues = new HttpParams().set('rtfValue', rtfText);
    return this.http.get('http://localhost:64101/api/RtfToHtml/' + rtfText);
  }
}
