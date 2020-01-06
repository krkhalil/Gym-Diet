//
//  ExercisetypeViewController.m
//  Gym Diet
//
//  Created by Pasha on 09/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import "ExercisetypeViewController.h"
#import "ExerciseViewController.h"
#import "exercisetTypeTableViewCell.h"

@interface ExercisetypeViewController () <UITableViewDelegate,UITableViewDataSource>
@property NSArray *images;
@property NSArray *names;
@end

@implementation ExercisetypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationController.navigationBar.hidden=false;
    self.title=@"Choose Exercise";
    _images=[[NSArray alloc] initWithObjects:@"BG1",@"BG2",@"BG6",@"BG1",@"tricep1",@"BG4", nil];
    _names =[[NSArray alloc] initWithObjects:@"Chest",@"Back",@"Shoulders",@"Bicep",@"Tricep",@"Legs",nil];
    // Do any additional setup after loading the view.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    exercisetTypeTableViewCell *cell = (exercisetTypeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"exercisetTypeTableViewCell"];
    if(cell == nil){
        cell = [[exercisetTypeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"exercisetTypeTableViewCell"];
    }
    cell.name.text = [self.names objectAtIndex:indexPath.row];
    cell.exerciseImage.image=[UIImage imageNamed:[self.images objectAtIndex:indexPath.row]];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _names.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExerciseViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ExerciseViewController"];
    vc.type = [_names objectAtIndex:indexPath.row];
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
