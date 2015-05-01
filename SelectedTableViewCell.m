//
//  SelectedTableViewCell.m
//  ResidentInsure
//
//  Created by Derek on 4/28/15.
//  Copyright (c) 2015 WiredApplications. All rights reserved.
//

#import "SelectedTableViewCell.h"

@implementation SelectedTableViewCell
typedef NS_ENUM(NSInteger, setSelected){
    defaultColorSet
    
    
};

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        self.selected = NO;
    }
    return self;
}


-(void)setSelected:(BOOL)selected {
    self.selected = selected;
    if (selected) {
        self.textLabel.textColor = [UIColor whiteColor];
    } else {
        self.textLabel.textColor = [UIColor redColor];
    }
}

@end
