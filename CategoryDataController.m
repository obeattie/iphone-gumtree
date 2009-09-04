//
//  CategoryDataController.m
//  Gumtree
//
//  Created by Oliver Beattie on 03/09/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "CategoryDataController.h"
#import "GumtreeCategory.h"

@implementation CategoryDataController
	@synthesize data;
	
	- (id)init {
		if (self = [super init]) {
			[self populate];
		}
		return self;
	}
	
	- (void)dealloc {
		[data release];
		return [super dealloc];
	}

	- (void)populate {
		/* Populate self.data with a list of all the categories */
		NSMutableArray *categoryList = [[NSMutableArray alloc] init];
		GumtreeCategory *category;
		
		// Top-level categories only for now
		category = [[GumtreeCategory alloc] init];
		category.name = @"Flats & Houses";
		category.browsable = NO;
		[categoryList addObject:category];
		
		category = [[GumtreeCategory alloc]	init];
		category.name = @"Services";
		category.identifier = @"services";
		category.browsable = YES;
		[categoryList addObject:category];
		
		category = [[GumtreeCategory alloc] init];
		category.name = @"Pets";
		category.identifier = @"pets";
		category.browsable = YES;
		[categoryList addObject:category];
		
		category = [[GumtreeCategory alloc] init];
		category.name = @"Friends & Dating";
		category.identifier = @"friends-dating";
		category.browsable = YES;
		[categoryList addObject:category];
		
		category = [[GumtreeCategory alloc] init];
		category.name = @"Cars for Sale";
		category.identifier = @"cars";
		category.browsable = YES;
		[categoryList addObject:category];
		
		category = [[GumtreeCategory alloc] init];
		category.name = @"Stuff for sale";
		category.identifier = @"stuff";
		category.browsable = YES;
		[categoryList addObject:category];

		
		// Store in self.data, dispose of local variables
		self.data = categoryList;
		[categoryList release];
		[category release];
	}
@end
