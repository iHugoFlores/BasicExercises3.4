//
//  ViewController.m
//  UISegmentedControlObjC
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *shapeView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

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
}

- (void)renderSecondSel {
    _titleLabel.text = @"Second Segment Selected";
}

- (void)renderThirdSel {
    _titleLabel.text = @"Third Segment Selected";
}

- (void)renderFourthSel {
    _titleLabel.text = @"Fourth Segment Selected";
}


@end
