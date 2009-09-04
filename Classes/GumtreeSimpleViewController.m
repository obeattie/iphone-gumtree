//
//  GumtreeSimpleViewController.m
//  GumtreeSimple
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GumtreeSimpleViewController.h"
#import "CategoryDataController.h"
#import "GumtreeCategory.h"

@implementation GumtreeSimpleViewController
	@synthesize dataController;
	- (void)viewDidLoad {
		dataController = [[CategoryDataController alloc] init];
		[super viewDidLoad];
	}

	#pragma mark UITableViewDataSource methods
	- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
		/* We're not using sections, so just return the number of categories */
		return [dataController.data count];
	}
	
	- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
		static NSString *cellIdentifier = @"GumtreeCategoryCell";
		
		// Dequeue or create a table cell for the category
		UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
		if (cell == nil) {
			cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
		}
		
		GumtreeCategory *categoryAtIndex = [dataController.data objectAtIndex:indexPath.row];
		cell.textLabel.text = categoryAtIndex.name;
		
		[categoryAtIndex release];
		
		return cell;
	}
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
