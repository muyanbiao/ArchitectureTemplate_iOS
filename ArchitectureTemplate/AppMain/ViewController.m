//
//  ViewController.m
//  ArchitectureTemplate
//
//  Created by Max on 2019/12/16.
//  Copyright © 2019 muyanbiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

#pragma mark - property
@property(nonatomic, strong)UIButton *button;

@property(nonatomic, strong)UITableView *tableView;

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    label.text = @"Hello iOS12 under Xcode11";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.center = self.view.center;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

#pragma mark UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *extractedExpr = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:extractedExpr];
    return cell;
}

#pragma mark CustomDelegate
- (void)customDelegateMethod {
    
}

#pragma mark event response
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark private methods
- (void)privateMethod {
    
}

#pragma mark gettters and setters
- (UIButton *)button {
    if (_button == nil) {
        _button = [[UIButton alloc] init];
    }
    return _button;
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}

@end
