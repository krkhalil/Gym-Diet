//
//  exercisetTypeTableViewCell.h
//  Gym Diet
//
//  Created by Pasha on 09/07/2019.
//  Copyright © 2019 Moiz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface exercisetTypeTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *exerciseImage;
@property (weak, nonatomic) IBOutlet UILabel *name;

@end

NS_ASSUME_NONNULL_END
