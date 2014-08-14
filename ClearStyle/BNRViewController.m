//
//  BNRViewController.m
//  ClearStyle
//
//  Created by DetroitLabsUser on 4/22/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import "BNRViewController.h"
#import "BNRToDoItem.h"

@interface BNRViewController ()

@end

@implementation BNRViewController{
    NSMutableArray *_toDoItems;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _toDoItems.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *ident = @"cell";
    //re-use or create a cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    int index = [indexPath row];
    BNRToDoItem *item = _toDoItems[index];
    cell.textLabel.text = item.text;
    return cell;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        _toDoItems = [[NSMutableArray alloc] init];
        [_toDoItems addObject:[BNRToDoItem toDoItemWithText:@"Buy festival tickets"]];
        [_toDoItems addObject:[BNRToDoItem toDoItemWithText:@"Oil change"]];
        [_toDoItems addObject:[BNRToDoItem toDoItemWithText:@"Brush the cats"]];
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    self.tableView.separatorColor = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor blackColor];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor*)colorForIndex:(NSInteger) index
{
    NSUInteger itemCount = _toDoItems.count - 1;
    float val = ((float)index / (float)itemCount)  *  0.6;
    return [UIColor colorWithRed:1.0 green:val blue:0.0 alpha:1.0];
}

#pragma mark - UITableViewDataDelegate protocol methods
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [self colorForIndex:indexPath.row];
}

@end
