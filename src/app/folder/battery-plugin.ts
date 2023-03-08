// import { registerPlugin } from '@capacitor/core';

// export interface EchoPlugin {
//  echo(options: { value: string }): Promise<{ value: string }>;
// }

// const Echo = registerPlugin<any>('Echo');
// // const Echo = registerPlugin<EchoPlugin>('Echo');

//  export default Echo;

import { registerPlugin } from '@capacitor/core';

const BatteryPlugin = registerPlugin<any>('BatteryPlugin');


export default BatteryPlugin;


