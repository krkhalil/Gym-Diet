//
//  ExerciseViewController.m
//  Gym Diet
//
//  Created by Pasha on 09/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "ExerciseViewController.h"
#import "ExerciseTableViewCell.h"

@interface ExerciseViewController () <UITableViewDelegate,UITableViewDataSource>
@property NSArray *back;
@property NSArray *shoulder;
@property NSArray *chest;
@property NSArray *bicep;
@property NSArray *tricep;
@property NSArray *legs;

@property NSArray *mainarray;
@end

@implementation ExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=false;
    self.title=_type;
    _back=[[NSArray alloc] initWithObjects:@"back1",@"back2",@"back3",@"back4",@"back5", nil];
        _shoulder=[[NSArray alloc] initWithObjects:@"shoulder1",@"shoulder2",@"shoulder3",@"shoulder4",@"shoulder5", nil];
        _chest=[[NSArray alloc] initWithObjects:@"chest1",@"chest2",@"chest3",@"chest4",@"chest5",@"chest6",@"chest7",nil];
        _bicep=[[NSArray alloc] initWithObjects:@"bicep1",@"bicep2",@"bicep3",@"bicep4",@"bicep5", nil];
        _tricep=[[NSArray alloc] initWithObjects:@"tricep1",@"tricep2",@"tricep3",@"tricep4",@"tricep5",@"tricep6",nil];
    _legs=[[NSArray alloc] initWithObjects:@"legs1",@"legs2",@"legs3",@"legs4",@"legs5", nil];
    // Do any additional setup after loading the view.
    
    
    if ([_type isEqualToString:@"Back"]) {
        
        _mainarray=[[NSArray alloc] initWithArray:_back];
    }
    else
        if ([_type isEqualToString:@"Bicep"]) {
                   _mainarray=[[NSArray alloc] initWithArray:_bicep];
        }
        else
            if ([_type isEqualToString:@"Tricep"]) {
                      _mainarray=[[NSArray alloc] initWithArray:_tricep];
            }
            else
                if ([_type isEqualToString:@"Chest"]) {
                            _mainarray=[[NSArray alloc] initWithArray:_chest];
                }
                else
                    if ([_type isEqualToString:@"Shoulders"]) {
                                _mainarray=[[NSArray alloc] initWithArray:_shoulder];
                    }
                    else
                        if ([_type isEqualToString:@"Legs"]) {
                                    _mainarray=[[NSArray alloc] initWithArray:_legs];
                        }
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExerciseTableViewCell *cell = (ExerciseTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ExerciseTableViewCell"];
    if(cell == nil){
        cell = [[ExerciseTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ExerciseTableViewCell"];
    }
    cell.exercisenameLabel.text = [NSString stringWithFormat:@"Exercise %ld",(long)indexPath.row+1];
    
    cell.exerciseImage.image=[UIImage imageNamed:[self.mainarray objectAtIndex:indexPath.row]];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 272;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _mainarray.count;
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
