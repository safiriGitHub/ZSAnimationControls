//
//  ZSScaleLabelExampleVC.m
//  ZSAnimationControls-master
//
//  Created by safiri on 2018/6/10.
//  Copyright © 2018年 safiri. All rights reserved.
//

#import "ZSScaleLabelExampleVC.h"

@interface ZSScaleLabelExampleVC ()

@property (nonatomic ,strong) ZSScaleLabel *animationLabel;


@end

@implementation ZSScaleLabelExampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = CGRectMake((self.view.frame.size.width - 200)/2, 100, 200, 30);
    ZSScaleLabel *animationLabel = [[ZSScaleLabel alloc] initWithFrame:frame];
    [self.view addSubview:animationLabel];
    
    animationLabel.text = @"ZSScaleLabelExampleVC";
    animationLabel.font = [UIFont systemFontOfSize:17];
    animationLabel.startScale = 1;
    animationLabel.endScale = 2;
    animationLabel.backedLabelColor = [UIColor redColor];
    animationLabel.colorLabelColor = [UIColor brownColor];
    self.animationLabel = animationLabel;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.animationLabel startAnimation];
    });
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
