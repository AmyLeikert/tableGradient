//
//  BNRTableViewCell.m
//  ClearStyle
//
//  Created by DetroitLabsUser on 4/23/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import "BNRTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation BNRTableViewCell {
    CAGradientLayer *_gradientLayer;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
