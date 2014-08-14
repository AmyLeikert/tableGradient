//
//  BNRToDoItem.h
//  ClearStyle
//
//  Created by DetroitLabsUser on 4/22/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRToDoItem : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic) BOOL completed;

-(id)initWithText:(NSString*)text;
+(id)toDoItemWithText:(NSString *)text;


@end
