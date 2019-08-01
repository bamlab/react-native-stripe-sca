import { NativeModules } from 'react-native';

export const sampleMethod = () => {
  NativeModules.StripeSca.sampleMethod('test', 12, console.log);
};
