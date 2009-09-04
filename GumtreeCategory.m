//
//  GumtreeCategory.m
//  Gumtree
//
//  Created by Oliver Beattie on 03/09/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GumtreeCategory.h"


@implementation GumtreeCategory

	@synthesize name, identifier, browsable, parent;

	-(void) dealloc {
		[name release];
		[identifier release];
		[parent release];
		return [super dealloc];
	};

@end
