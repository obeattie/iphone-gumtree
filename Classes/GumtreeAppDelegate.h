//
//  GumtreeAppDelegate.h
//  Gumtree
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GumtreeViewController;

@interface GumtreeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GumtreeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GumtreeViewController *viewController;

@end

