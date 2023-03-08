import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import BatteryPlugin from './battery-plugin';

@Component({
  selector: 'app-folder',
  templateUrl: './folder.page.html',
  styleUrls: ['./folder.page.scss'],
})
export class FolderPage implements OnInit {
  public folder!: string;

  constructor(private activatedRoute: ActivatedRoute) { }

  async ngOnInit() {
    this.folder = this.activatedRoute.snapshot.paramMap.get('id') as string;
  
 
    BatteryPlugin.addListener('batteryChange', (event: any) => {
      console.log('Battery level changed in battery plugin:', event);
      alert(`Battery level changed in battery plugin:`)
    });
    
    window.addEventListener('batteryChange', (event: any) => {
      console.log(`Battery level changed in window:`,event);
      alert(`Battery level changed in window:`)
    });
    const { batteryLevel } = await BatteryPlugin.getBatteryLevel();
    console.log(`Current battery level: ${batteryLevel}`);

   
  }

}
