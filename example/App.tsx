import React, { Fragment } from 'react';
import { View, Text } from 'react-native';
import { sampleMethod } from 'react-native-stripe-sca';

export const App = () => {
  sampleMethod();
  return (
    <View>
      <Text>Welcome in React Native Stripe SCA</Text>
    </View>
  );
};
