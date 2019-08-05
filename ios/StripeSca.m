#import "StripeSca.h"
#import <Stripe/Stripe.h>

@implementation StripeSca



RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setPublishableKey:(NSString *)publishableKey
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
    NSLog(@"setPublishableKey");
    @try {
        [[STPPaymentConfiguration sharedConfiguration] setPublishableKey:publishableKey];
        resolve(@YES);
    }
    @catch (NSError * error) {
        reject(@"1", @"Error setting publishable key", error);
    }
}

@end
