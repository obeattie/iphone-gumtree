//
//  GumtreeSimpleViewController.h
//  GumtreeSimple
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CategoryDataController;
	@interface GumtreeSimpleViewController : UIViewController <UITableViewDataSource> {
		CategoryDataController *dataController;
	}
@end
