//
//  CategoryDataController.h
//  GumtreeSimple
//
//  Created by Oliver Beattie on 03/09/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GumtreeCategory;
	@interface CategoryDataController : NSObject {
		NSMutableArray *data;
	}
	
	@property (nonatomic, copy, readwrite) NSMutableArray *data;
	
	- (void)populate;
@end
