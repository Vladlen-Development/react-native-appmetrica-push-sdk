import { NativeModules, Platform } from 'react-native';

const { RNAppmetricaPushSdk } = NativeModules;

class YandexMetricaPush {
    init(token = '') {
        if (Platform.OS === 'android') {
            RNAppmetricaPushSdk.init();
        } else {
            RNAppmetricaPushSdk.initPush(token);
        }
    }
}

const yandexMetricaPush = new YandexMetricaPush()
export default yandexMetricaPush;
