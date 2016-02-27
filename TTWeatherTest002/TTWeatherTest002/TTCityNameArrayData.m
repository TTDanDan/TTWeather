//
//  TTCityNameArrayData.m
//  TTWeatherTest002
//
//  Created by 赵鹏 on 16/2/26.
//  Copyright © 2016年 Mars_Dan. All rights reserved.
//

#import "TTCityNameArrayData.h"

@implementation TTCityNameArrayData
+(instancetype)cityNameArray{
    static TTCityNameArrayData *cityNameArray;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cityNameArray = [[TTCityNameArrayData alloc]init];
    });
    
    return cityNameArray;
}

@end
