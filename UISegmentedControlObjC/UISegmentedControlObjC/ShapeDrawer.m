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
- (void)createRectangle;
- (void)createTriangle;
- (void)createPie;
- (void)createCircle;
@end

@implementation ShapeDrawer

- (instancetype)init: (CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = UIColor.clearColor;
    return self;
}

- (void)createRectangle {
    _path = [UIBezierPath bezierPath];
    
    [_path moveToPoint:CGPointMake(0.0, 0.0)];
    
    [_path addLineToPoint:CGPointMake(0.0, self.frame.size.height)];
    
    [_path addLineToPoint:CGPointMake(self.frame.size.width, self.frame.size.height)];
    
    [_path addLineToPoint:CGPointMake(self.frame.size.width, 0.0)];
    
    [_path closePath];
}

- (void)createTriangle {
    _path = [UIBezierPath bezierPath];
    
    [_path moveToPoint:CGPointMake(self.frame.size.width / 2, 0.0)];
    
    [_path addLineToPoint:CGPointMake(0.0, self.frame.size.height)];
    
    [_path addLineToPoint:CGPointMake(self.frame.size.width, self.frame.size.height)];
    
    [_path closePath];
}

- (void)createPie {
    _path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width / 2, 0.0) radius:self.frame.size.height/2 startAngle:[self deg2rad:180.0] endAngle:[self deg2rad:0.0] clockwise:true];
}

- (void)createCircle {
    _path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width / 2, self.frame.size.height/2) radius:self.frame.size.height/2 startAngle:[self deg2rad:0.0] endAngle:[self deg2rad:360.0] clockwise:true];
}

-(double) deg2rad:(double) number {
    return number * M_PI / 180.0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
