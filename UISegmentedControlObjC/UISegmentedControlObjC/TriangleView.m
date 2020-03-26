//
//  TriangleView.m
//  UISegmentedControlObjC
//
//  Created by Hugo Flores Perez on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "TriangleView.h"

@interface ShapeDrawer ()
@property UIBezierPath *path;
- createTriangle;
@end

@implementation TriangleView

- (void)drawRect:(CGRect)rect {
    [self createTriangle];
    
    [UIColor.orangeColor setFill];
    [self.path fill];
}

@end
