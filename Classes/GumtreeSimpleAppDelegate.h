//
//  GumtreeSimpleAppDelegate.h
//  GumtreeSimple
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GumtreeSimpleViewController;

@interface GumtreeSimpleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GumtreeSimpleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GumtreeSimpleViewController *viewController;

@end

