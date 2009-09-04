//
//  GumtreeSimpleViewController.m
//  GumtreeSimple
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GumtreeSimpleViewController.h"
#import "CategoryDataController.h"

@implementation GumtreeSimpleViewController
	- (void)viewDidLoad {
		[super viewDidLoad];
	}

	#pragma mark Table view data source
	
	#pragma mark -


	/*
	// Override to allow orientations other than the default portrait orientation.
	- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
		// Return YES for supported orientations
		return (interfaceOrientation == UIInterfaceOrientationPortrait);
	}
	*/

	- (void)didReceiveMemoryWarning {
		// Releases the view if it doesn't have a superview.
		[super didReceiveMemoryWarning];
		
		// Release any cached data, images, etc that aren't in use.
	}

	- (void)viewDidUnload {
		// Release any retained subviews of the main view.
		// e.g. self.myOutlet = nil;
	}


	- (void)dealloc {
		[super dealloc];
	}
@end
