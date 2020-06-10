import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'angularproject';


  ConvertRtfToHtml(RtfContent: any){
    console.log('Entered Rtf Content:', RtfContent);

  }
}
