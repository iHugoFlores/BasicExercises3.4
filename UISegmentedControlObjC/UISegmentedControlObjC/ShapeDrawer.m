//
//  ShapeDrawer.m
//  UISegmentedControlObjC
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ShapeDrawer.h"

@interface ShapeDrawer ()

@property UIBezierPath *path;

@end

@implementation ShapeDrawer

- (instancetype)init: (CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = UIColor.clearColor;
    return self;
}

- (void)createRectangle {
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
