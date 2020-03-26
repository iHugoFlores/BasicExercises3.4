//
//  ViewController.m
//  UISegmentedControlObjC
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"
#import "RectangleView.h"
#import "TriangleView.h"
#import "CircleView.h"
#import "PieView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *shapeView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

static CGFloat shapeWidth = 240.0;
static CGFloat shapeHeight = 160;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self renderFirstSel];
}

- (IBAction)onIndexChanged:(id)sender {
    switch (_segmentedControl.selectedSegmentIndex){
        case 0:
            [self renderFirstSel];
             break;
        case 1:
            [self renderSecondSel];
             break;
        case 2:
            [self renderThirdSel];
            break;
        default:
            [self renderFourthSel];
             break;

    }
}

- (void)renderFirstSel {
    _titleLabel.text = @"First Segment Selected";

    CGRect frame = CGRectMake(self.view.frame.size.width/2 - shapeWidth/2, self.view.frame.size.height/2 - shapeHeight/2, shapeWidth, shapeHeight);
    
    UIView *figView = [RectangleView alloc];
    figView = [figView initWithFrame:frame];
    
    figView.center = [_shapeView convertPoint:_shapeView.center fromView:_shapeView.superview];
    
    for (id subView in _shapeView.subviews) {
        [subView removeFromSuperview];
    }
    [_shapeView addSubview:figView];
}

- (void)renderSecondSel {
    _titleLabel.text = @"Second Segment Selected";
    
    CGRect frame = CGRectMake(self.view.frame.size.width/2 - shapeWidth/2, self.view.frame.size.height/2 - shapeHeight/2, shapeWidth, shapeHeight);
    
    UIView *figView = [[CircleView alloc] initWithFrame:frame];
    
    figView.center = [_shapeView convertPoint:_shapeView.center fromView:_shapeView.superview];
    
    for (id subView in _shapeView.subviews) {
        [subView removeFromSuperview];
    }

    [_shapeView addSubview:figView];
}

- (void)renderThirdSel {
    _titleLabel.text = @"Third Segment Selected";
    
    CGRect frame = CGRectMake(self.view.frame.size.width/2 - shapeWidth/2, self.view.frame.size.height/2 - shapeHeight/2, shapeWidth, shapeHeight);
    
    UIView *figView = [[TriangleView alloc] initWithFrame:frame];
    
    figView.center = [_shapeView convertPoint:_shapeView.center fromView:_shapeView.superview];
    
    for (id subView in _shapeView.subviews) {
        [subView removeFromSuperview];
    }
    [_shapeView addSubview:figView];
}

- (void)renderFourthSel {
    _titleLabel.text = @"Fourth Segment Selected";
    
    CGRect frame = CGRectMake(self.view.frame.size.width/2 - shapeWidth/2, self.view.frame.size.height/2 - shapeHeight/2, shapeWidth, shapeHeight);
       
       UIView *figView = [[PieView alloc] initWithFrame:frame];
       
       figView.center = [_shapeView convertPoint:_shapeView.center fromView:_shapeView.superview];
       
       for (id subView in _shapeView.subviews) {
           [subView removeFromSuperview];
       }
       [_shapeView addSubview:figView];
}


@end
