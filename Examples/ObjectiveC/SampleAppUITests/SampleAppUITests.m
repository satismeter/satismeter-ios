//
//  SampleAppUITests.m
//  SampleAppUITests
//
//  Created by Jakub Sedlacek on 11.10.17.
//  Copyright © 2017 SatisMeter. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SampleAppUITests : XCTestCase
@property (nonatomic, strong) XCUIApplication *app;
@end

@implementation SampleAppUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    
    self.app = [[XCUIApplication alloc] init];
    [self.app launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubmitFeedback {
    XCUIElement *label = self.app.staticTexts[@"How likely are you to recommend ACME to your friends and colleagues?"];
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [self expectationForPredicate:exists evaluatedWithObject:label handler:nil];
    [self waitForExpectationsWithTimeout:5 handler:nil];
    XCTAssert(label.exists);
    
    [[[[self.app.scrollViews.otherElements containingType:XCUIElementTypeStaticText identifier:@"How likely are you to recommend ACME to your friends and colleagues?"] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:0] tap];
    
    [[[[[self.app.scrollViews.otherElements containingType:XCUIElementTypeStaticText identifier:@"How likely are you to recommend ACME to your friends and colleagues?"] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] childrenMatchingType:XCUIElementTypeTextView].element typeText: @"Not so bad!"];
    
    XCUIElementQuery *scrollViewsQuery = self.app.scrollViews;
    [scrollViewsQuery.otherElements.buttons[@"Submit Feedback"] tap];
}

@end
