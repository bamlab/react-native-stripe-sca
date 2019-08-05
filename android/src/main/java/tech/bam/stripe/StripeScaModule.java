package tech.bam.stripe;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.stripe.android.Stripe;

public class StripeScaModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    private Stripe stripe;

    public StripeScaModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "StripeSca";
    }

    @ReactMethod
    public void setPublishableKey(String publishableKey, final Promise promise) {
        stripe = new Stripe(getReactApplicationContext(), publishableKey);
        promise.resolve(true);
    }
}
