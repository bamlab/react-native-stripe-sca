#import "StripeSca.h"
#import <Stripe/Stripe.h>

@implementation StripeSca

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

- (id)init {
    self = [super init];
    [[STPPaymentConfiguration sharedConfiguration] setPublishableKey:@"pk_test_NGDSl1RJCR0kwCvsk2gSvNtS"];
    return self;
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
	callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}

@end
