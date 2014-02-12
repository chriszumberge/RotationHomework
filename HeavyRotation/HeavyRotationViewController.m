//
//  HeavyRotationViewController.m
//  HeavyRotation
//
//  Created by Christopher Zumberge on 2/8/14.
//  Copyright (c) 2014 Christopher Zumberge. All rights reserved.
//

#import "HeavyRotationViewController.h"

@interface HeavyRotationViewController ()

@end

@implementation UIColor (Extensions)

+ (UIColor *)pickRandomColor{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

@end

@implementation HeavyRotationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.topLeftView.backgroundColor = [UIColor pickRandomColor];
    self.topRightView.backgroundColor = [UIColor pickRandomColor];
    self.bottomView.backgroundColor = [UIColor pickRandomColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        self.topLeftView.backgroundColor = [UIColor pickRandomColor];
        self.topRightView.backgroundColor = [UIColor pickRandomColor];
        self.bottomView.backgroundColor = [UIColor pickRandomColor];
    }
}

@end
