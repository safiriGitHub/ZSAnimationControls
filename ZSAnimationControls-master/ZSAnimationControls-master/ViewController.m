//
//  ViewController.m
//  ZSAnimationControls-master
//
//  Created by safiri on 2018/6/10.
//  Copyright © 2018年 safiri. All rights reserved.
//

#import "ViewController.h"
#import "FBShimmeringExampleVC.h"
#import "ZSScaleLabelExampleVC.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;

@property (nonatomic ,strong) NSArray *menuTitles;
@property (nonatomic ,strong) NSArray *pushVCClassNames;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _menuTitles = @[@"FBShimmering",@"ZSScaleLabel"];
    _pushVCClassNames = @[@"FBShimmeringExampleVC",@"ZSScaleLabelExampleVC"];
    
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.menuTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.menuTitles[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *className = self.pushVCClassNames[indexPath.row];
    UIViewController *viewController = [[NSClassFromString(className) alloc] init];
    viewController.title = className;
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

@end
