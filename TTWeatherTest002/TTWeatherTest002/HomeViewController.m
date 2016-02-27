//
//  HomeViewController.m
//  TTWeatherTest002
//
//  Created by 赵鹏 on 16/2/26.
//  Copyright © 2016年 Mars_Dan. All rights reserved.
//

#import "HomeViewController.h"
#import "TT.pch"
#import "ControllerManager.h"
#import "TTCityNameArrayData.h"

@interface HomeViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
//@property (nonatomic, strong) NSMutableArray *CityArray;
@property (nonatomic, strong) TTCityNameArrayData *cityNameArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.cityNameArray addObserver:self forKeyPath:@"cityNameArray" options:NSKeyValueObservingOptionNew context:nil];
    
    NSArray *aeee = @[@"一",@"二",@"三",@"四"];
   self.cityNameArray = [TTCityNameArrayData cityNameArray];
    
    self.cityNameArray.cityNameArray = aeee;
    [self scroll];
    
    
}
//KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    [self viewWillAppear:YES];
}


- (void)scroll{
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, VIEW_SIZE.width, VIEW_SIZE.height)];
    [self.view addSubview:_scrollView];

    for (int i = 0; i < self.cityNameArray.cityNameArray.count; i++) {

        CGRect rect = CGRectMake(self.view.frame.size.width*i, 0, self.view.frame.size.width, self.view.frame.size.height);
        TTCityWeartherVC *cityVC = [[TTCityWeartherVC alloc]initCityName:self.cityNameArray.cityNameArray[i]];
        cityVC.view.frame =rect;
        [_scrollView addSubview:cityVC.view];
        [self addChildViewController:cityVC];


        
    }
    _scrollView.pagingEnabled = YES;
    _scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * self.cityNameArray.cityNameArray.count, self.view.bounds.size.height);
    _scrollView.contentOffset = CGPointMake(0, 0);
    _scrollView.directionalLockEnabled = YES;
    
    _scrollView.bounces = NO;
    //CGFloat top, CGFloat left, CGFloat bottom, CGFloat right
    _scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0,self.view.frame.size.width , 0);
    _scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.delegate = self;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
