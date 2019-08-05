import { NativeModules } from 'react-native';

class StripeModule {
  private constructor() {}
  static _instance: StripeModule;
  static get instance() {
    if (!StripeModule._instance) {
      StripeModule._instance = new StripeModule();
    }
    return StripeModule._instance;
  }

  setPublishableKey = (publishableKey: string) =>
    NativeModules.StripeSca.setPublishableKey(publishableKey);
}

export const Stripe = StripeModule.instance;
