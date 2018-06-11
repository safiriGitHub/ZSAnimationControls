//
//  FBShimmeringExampleVC.m
//  ZSAnimationControls-master
//
//  Created by safiri on 2018/6/10.
//  Copyright © 2018年 safiri. All rights reserved.
//

#import "FBShimmeringExampleVC.h"
#import "FBShimmeringView.h"

@interface FBShimmeringExampleVC ()

@end

@implementation FBShimmeringExampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *noMoreDataLab = [UILabel new];
    noMoreDataLab.font = [UIFont systemFontOfSize:14.f];
    noMoreDataLab.textAlignment = NSTextAlignmentCenter;
    noMoreDataLab.text = @"没有更多新闻啦~";
    [noMoreDataLab sizeToFit];
    //noMoreDataLab.center = CGPointMake(CGRectGetWidth(self.view.bounds) / 2.f, CGRectGetHeight(self.view.bounds) / 2.f);
    
    //辉光效果
    FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    shimmeringView.shimmering = YES;
    shimmeringView.shimmeringBeginFadeDuration = 1.f;
    shimmeringView.shimmeringSpeed = 100;
    shimmeringView.shimmeringAnimationOpacity = 0.3;
    shimmeringView.contentView = noMoreDataLab;
    [self.view addSubview:shimmeringView];
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
