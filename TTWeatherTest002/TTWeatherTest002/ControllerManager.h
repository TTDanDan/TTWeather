//
//  ControllerManager.h
//  TTWeatherTest002
//
//  Created by 赵鹏 on 16/2/26.
//  Copyright © 2016年 Mars_Dan. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "TTCityWeartherVC.h"

@interface ControllerManager : NSObject


+ (TTCityWeartherVC *)initWithCityWeatherVCInCityName:(NSString *)cityName rect:(CGRect) rect;

@end
