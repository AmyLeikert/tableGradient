//
//  BNRViewController.h
//  ClearStyle
//
//  Created by DetroitLabsUser on 4/22/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
