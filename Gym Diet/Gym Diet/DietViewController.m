//
//  DietViewController.m
//  Gym Diet
//
//  Created by Pasha on 09/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "DietViewController.h"
#import "ProViewController.h"
#import "beginnerViewController.h"

@interface DietViewController ()

@end

@implementation DietViewController

- (void)viewDidLoad {
    [super viewDidLoad];
         self.navigationController.navigationBar.hidden=false;
    // Do any additional setup after loading the view.
}
- (IBAction)beginnerButtonTouched:(id)sender
{
    beginnerViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"beginnerViewController"];
   
    [self.navigationController pushViewController:vc animated:true];
}
- (IBAction)proButtonTouched:(id)sender
{
    ProViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ProViewController"];
    
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
