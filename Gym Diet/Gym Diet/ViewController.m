//
//  ViewController.m
//  Gym Diet
//
//  Created by Pasha on 08/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;

@end

@implementation ViewController
- (IBAction)nameTextField:(id)sender {
}
- (IBAction)weightTextField:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden=true;
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"Name"])
    {
        if (![[[NSUserDefaults standardUserDefaults] objectForKey:@"Name"] isEqualToString:@""])
        {
            
            UITabBarController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"main"];
            vc.selectedIndex=0;
            
            //MainViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
            [self.navigationController pushViewController:vc animated:true];
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden=true;
}
- (IBAction)enterButtonTouched:(id)sender {
    if ([_nameTextField.text isEqualToString:@""] && [_weightTextField.text isEqualToString:@""] && [_heightTextField.text isEqualToString:@""] )
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Failed" message:@"Please enter your Name, weight and Height" preferredStyle:UIAlertControllerStyleAlert]; // 7
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }]; // 8
        
        [alert addAction:defaultAction]; // 9
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] setObject:_nameTextField.text forKey:@"Name"];
        [[NSUserDefaults standardUserDefaults] setObject:_weightTextField.text forKey:@"weight"];
        [[NSUserDefaults standardUserDefaults] setObject:_heightTextField.text forKey:@"height"];
//        MainViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
//        [self.navigationController pushViewController:vc animated:true];
        
        UITabBarController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"main"];
        vc.selectedIndex=0;
        
        //MainViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
        [self.navigationController pushViewController:vc animated:true];
    }
}

@end
