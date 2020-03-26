//
//  RectangleView.m
//  UISegmentedControlObjC
//
//  Created by Hugo Flores Perez on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "RectangleView.h"

@interface ShapeDrawer ()
@property UIBezierPath *path;
- createRectangle;
@end

@implementation RectangleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self createRectangle];
    
    [UIColor.orangeColor setFill];
    [self.path fill];
}

@end
