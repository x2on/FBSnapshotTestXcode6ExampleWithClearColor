//
//  FBSnapshotTestXcode6ExampleTests.m
//  FBSnapshotTestXcode6ExampleTests
//
//  Created by Felix Schulze on 16.09.14.
//  Copyright (c) 2014 AutoScout24 GmbH. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FBSnapshotTestCase.h"

#import "ASCTransparentView.h"

@interface FBSnapshotTestXcode6ExampleTests : FBSnapshotTestCase

@end

@implementation FBSnapshotTestXcode6ExampleTests

- (void)setUp
{
    [super setUp];
    self.recordMode = NO;
}

- (void)testTransparentView
{
    ASCTransparentView *view = [[ASCTransparentView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    view.backgroundColor = [UIColor clearColor];
    
    FBSnapshotVerifyView(view, nil);
}

- (void)testView
{
    ASCTransparentView *view = [[ASCTransparentView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    view.backgroundColor = [UIColor whiteColor];

    FBSnapshotVerifyView(view, nil);
}

@end
