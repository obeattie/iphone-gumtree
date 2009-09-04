//
//  GumtreeCategory.h
//  Gumtree
//
//  Created by Oliver Beattie on 03/09/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GumtreeCategory : NSObject {
	NSString *name;
	NSString *identifier;
	BOOL browsable;
	GumtreeCategory *parent;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *identifier;
@property (nonatomic) BOOL browsable;
@property (nonatomic, retain) GumtreeCategory *parent;

@end
