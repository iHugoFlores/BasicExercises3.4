//
//  CircleView.m
//  UISegmentedControlObjC
//
//  Created by Hugo Flores Perez on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "CircleView.h"

@interface ShapeDrawer ()
@property UIBezierPath *path;
- createCircle;
@end

@implementation CircleView

- (void)drawRect:(CGRect)rect {
    [self createCircle];
    
    [UIColor.orangeColor setFill];
    [self.path fill];
}

@end
