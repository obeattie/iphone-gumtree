//
//  GumtreeAppDelegate.m
//  Gumtree
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GumtreeAppDelegate.h"
#import "GumtreeViewController.h"

@implementation GumtreeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
