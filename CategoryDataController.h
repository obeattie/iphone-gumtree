//
//  CategoryDataController.h
//  Gumtree
//
//  Created by Oliver Beattie on 03/09/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GumtreeCategory;
    @interface CategoryDataController : NSObject <UITableViewDataSource> {
        NSMutableArray *data;
        
        @private
            NSArray *cachedTopLevelCategories;
    }
    
    @property (nonatomic, copy) NSMutableArray *data;
    @property (nonatomic, retain) NSArray *cachedTopLevelCategories;
    
    - (void) populate;
    - (NSArray *) topLevelCategories;
    - (GumtreeCategory *)categoryAtIndexPath:(NSIndexPath *)indexPath;
@end
