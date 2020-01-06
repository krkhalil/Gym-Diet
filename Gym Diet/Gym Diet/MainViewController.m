//
//  MainViewController.m
//  Gym Diet
//
//  Created by Pasha on 09/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "ExercisetypeViewController.h"
#import "DietViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=true;
    self.nameLabel.text = [NSString stringWithFormat:@"Hi %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"Name"]];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden=true;
}
- (IBAction)exerciseButtonTouched:(id)sender
{
    ExercisetypeViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ExercisetypeViewController"];
    [self.navigationController pushViewController:vc animated:true];
}
- (IBAction)dietButtonTouched:(id)sender
{
    DietViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"DietViewController"];
    [self.navigationController pushViewController:vc animated:true];
}
- (IBAction)profileButtonTouched:(id)sender
{
    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:vc animated:true];
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
