//
//  ProfileViewController.m
//  Gym Diet
//
//  Created by Andpercent on 19/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nametextfield;
@property (weak, nonatomic) IBOutlet UITextField *weighttextfield;
@property (weak, nonatomic) IBOutlet UILabel *labelname;
@property (weak, nonatomic) IBOutlet UITextField *heighttextfield;
@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"Name"])
    {
         self.labelname.text = [NSString stringWithFormat:@"Hi, %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"Name"]];
        _nametextfield.text= [[NSUserDefaults standardUserDefaults] objectForKey:@"Name"];
        _weighttextfield.text= [[NSUserDefaults standardUserDefaults] objectForKey:@"weight"];
        
        _heighttextfield.text= [[NSUserDefaults standardUserDefaults] objectForKey:@"height"];
        
    }
    // Do any additional setup after loading the view.
}
- (IBAction)saveButtonTouched:(id)sender
{
    if ([_nametextfield.text isEqualToString:@""] && [_weighttextfield.text isEqualToString:@""] && [_heighttextfield.text isEqualToString:@""] )
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Failed" message:@"Please enter your Name, weight and Height" preferredStyle:UIAlertControllerStyleAlert]; // 7
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }]; // 8
        
        [alert addAction:defaultAction]; // 9
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] setObject:_nametextfield.text forKey:@"Name"];
        [[NSUserDefaults standardUserDefaults] setObject:_weighttextfield.text forKey:@"weight"];
        [[NSUserDefaults standardUserDefaults] setObject:_heighttextfield.text forKey:@"height"];
        //        MainViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
        //        [self.navigationController pushViewController:vc animated:true];
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Profile Updated" message:@"Your data has been Updated" preferredStyle:UIAlertControllerStyleAlert]; // 7
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }]; // 8
        
        [alert addAction:defaultAction]; // 9
        [self presentViewController:alert animated:YES completion:nil];
    }
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
