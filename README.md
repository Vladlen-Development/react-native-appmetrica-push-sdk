# react-native-appmetrica-push-sdk

Дополнение к библиотеки react-native-appmetrica для инициализации Push SDK iOS & Android.
Для запуска необходима библиотека react-native-appmetrica.
Работает только с firebase!!!

## Getting started

`$ yarn add https://gitlab.com/getgain-public/libs/react-native-appmetrica.git`
`$ yarn add https://gitlab.com/getgain-public/libs/react-native-appmetrica-push-sdk.git`

## Usage

```javascript
import RNAppmetricaPushSdk from "react-native-appmetrica-push-sdk";

### example for Android

const InitAppMetrica = () => {
    AppMetrica.activate({
    apiKey: '...KEY...',
    sessionTimeout: 120,
    firstActivationAsUpdate: true,
    });

    RNAppmetricaPushSdk.init();
}

### example for iOS

const InitAppMetrica = () => {
    AppMetrica.activate({
    apiKey: '...KEY...',
    sessionTimeout: 120,
    firstActivationAsUpdate: true,
    });
    const deviceToken = await messaging().getToken();
    RNAppmetricaPushSdk.init(deviceToken);
}

```
