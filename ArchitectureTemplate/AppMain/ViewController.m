//
//  ViewController.m
//  ArchitectureTemplate
//
//  Created by Max on 2019/12/16.
//  Copyright © 2019 muyanbiao. All rights reserved.
//

#import "ViewController.h"
#import "Screen.h"
#import <Masonry/Masonry.h>

#pragma mark - constant
static NSString *const kCellIdentifier = @"cell";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

#pragma mark - property
@property(nonatomic, strong)UILabel *label;

@property(nonatomic, strong)UIButton *button;

@property(nonatomic, strong)UITableView *tableView;

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: add subview
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // MARK: update subview
    self.label.center = self.view.center;
    [self.button mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.top.mas_equalTo(self.label.mas_bottom);
    }];
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *extractedExpr = kCellIdentifier;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:extractedExpr];
    cell.textLabel.text = @"Hello iOS12 under Xcode11";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.label.text = [NSString stringWithFormat:@"cell %ld clicked", indexPath.row];
}

#pragma mark - CustomDelegate
- (void)customDelegateMethod {
    
}

#pragma mark - event response
- (void)didTappedButton:(UIButton *)button {
    self.label.text = @"Button tapped";
}

#pragma mark - private methods
- (void)privateMethod {
    
}

#pragma mark - gettters and setters
- (UILabel *)label {
    if (_label == nil) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
        _label.text = @"Hello iOS12 under Xcode11";
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}

- (UIButton *)button {
    if (_button == nil) {
        _button = [[UIButton alloc] init];
        _button.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10);
        _button.backgroundColor = [UIColor blueColor];
        [_button setTitle:@"Button" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(didTappedButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, Screen.width, Screen.height)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    }
    return _tableView;
}

@end
