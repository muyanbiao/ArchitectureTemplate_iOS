//
//  ViewController.m
//  ArchitureTemplate
//
//  Created by Max on 2019/12/16.
//  Copyright © 2019 muyanbiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
    label.text = @"Hello iOS12 under Xcode11";
    [self.view addSubview:label];
    label.center = self.view.center;
}


@end
