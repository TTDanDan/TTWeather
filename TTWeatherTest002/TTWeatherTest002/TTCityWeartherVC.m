//
//  TTCityWeartherVC.m
//  TTWeatherTest002
//
//  Created by 赵鹏 on 16/2/26.
//  Copyright © 2016年 Mars_Dan. All rights reserved.
//

#import "TTCityWeartherVC.h"

@interface TTCityWeartherVC ()
@property (nonatomic, strong) NSString *cityName;
@end

@implementation TTCityWeartherVC
- (instancetype)initCityName:(NSString *)cityName
{
    self = [super init];
    if (self) {
        self.cityName =cityName;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setBackgruang];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"123123123");
}

-(void)setBackgruang{
    
    NSLog(@"2222:%@",self.cityName);
    if ([self.cityName isEqualToString:@"一"]) {
        self.view.backgroundColor = [UIColor redColor];
    }
    if ([self.cityName isEqualToString:@"二"]) {
        self.view.backgroundColor = [UIColor lightGrayColor];
    }
    if ([self.cityName isEqualToString:@"三"]) {
        self.view.backgroundColor = [UIColor magentaColor];
    }
    if ([self.cityName isEqualToString:@"四"]) {
        self.view.backgroundColor = [UIColor orangeColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
