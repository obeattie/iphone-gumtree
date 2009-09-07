//
//  GumtreeViewController.h
//  Gumtree
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CategoryDataController;
    @interface GumtreeViewController : UIViewController <UITableViewDataSource> {
        CategoryDataController *dataController;
    }
    
    @property (nonatomic, retain) CategoryDataController *dataController;
    
    
@end
