//
//  RNAppmetricaPushSdk.swift
//  RNAppmetricaPushSdk
//
//  Created by Andrey Bondarenko on 18.01.2021.
//  Copyright © 2021 Facebook. All rights reserved.
//

import Foundation

@objc(RNAppmetricaPushSdk)
class RNAppmetricaPushSdk: NSObject {
    @objc
    func initPush(_ deviceToken: Data) {
        #if DEBUG
              let pushEnvironment = YMPYandexMetricaPushEnvironment.development
          #else
              let pushEnvironment = YMPYandexMetricaPushEnvironment.production
          #endif
  
        YMPYandexMetricaPush.setDeviceTokenFrom(deviceToken, pushEnvironment: pushEnvironment)
    }
}
