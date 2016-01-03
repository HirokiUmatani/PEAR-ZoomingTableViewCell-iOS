//
//  ZoomingTableViewCell.h
//  ZoomingTableViewCelll
//
//  Created by hirokiumatani on 2016/01/03.
//  Copyright © 2016年 hirokiumatani. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ZoomingTableViewCellDelegate <NSObject>
- (void)touchWithCell:(UIView *)zoomView;
@end
@interface ZoomingTableViewCell : UITableViewCell
@property (nonatomic,assign) id<ZoomingTableViewCellDelegate>delegate;
@end
