import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']


})
export class AppComponent {
  title = 'comunication';
  count = 0;

  onClickCount(){
  this.count += 1;
}

  onClickReset(val){
  this.count = val;
}

onClickReset2(val){
  this.count = val;
}

}

