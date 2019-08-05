import React, { Fragment } from 'react';
import { View, Text } from 'react-native';
import { Stripe } from 'react-native-stripe-sca';

export const App = () => {
  Stripe.setPublishableKey('whatever')
    .then(console.log)
    .catch(console.warn);
  return (
    <View>
      <Text>Welcome in React Native Stripe SCA</Text>
    </View>
  );
};
