//
//  MenuViewController.m
//  ResidentInsure
//
//  Created by Derek on 4/23/15.
//  Copyright (c) 2015 WiredApplications. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
@property (nonatomic, strong)UIButton *policies;
@end

@implementation MenuViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:1];
    
    self.policies = [[UIButton alloc] initWithFrame:CGRectMake(5, 100, 100, 40)];
    
    [self.policies setTitle:@"My Policies" forState:UIControlStateNormal];
    [self.policies setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.policies.titleLabel.textColor = [UIColor redColor];
    
    [self.view addSubview:self.policies];

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
