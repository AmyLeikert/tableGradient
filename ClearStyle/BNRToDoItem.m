//
//  BNRToDoItem.m
//  ClearStyle
//
//  Created by DetroitLabsUser on 4/22/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import "BNRToDoItem.h"

@implementation BNRToDoItem

-(id)initWithText:(NSString *)text {
    if (self= [super init]) {
        self.text = text;
    }
    return self;
}

+(id)toDoItemWithText:(NSString *)text {
    return [[BNRToDoItem alloc] initWithText:text];
}

@end
