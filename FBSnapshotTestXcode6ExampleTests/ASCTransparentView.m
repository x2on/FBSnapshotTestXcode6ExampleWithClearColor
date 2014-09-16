//
//  ASCTransparentView.m
//  FBSnapshotTestXcode6Example
//
//  Created by Felix Schulze on 16.09.14.
//  Copyright (c) 2014 AutoScout24 GmbH. All rights reserved.
//

#import "ASCTransparentView.h"

@implementation ASCTransparentView

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorSpace(context, CGColorGetColorSpace([UIColor lightGrayColor].CGColor));
    CGContextSetStrokeColor (context, CGColorGetComponents([UIColor lightGrayColor].CGColor));
    CGContextStrokeEllipseInRect (context, CGRectMake(self.bounds.size.width - 9, self.bounds.size.height - 9, 8, 8));
}

@end
