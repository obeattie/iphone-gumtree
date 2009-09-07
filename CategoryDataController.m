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
    @synthesize cachedTopLevelCategories;
    
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
        
        // Flats & Houses
        GumtreeCategory *flatsHousesCategory;
        flatsHousesCategory = [[GumtreeCategory alloc] init];
        flatsHousesCategory.name = @"Flats & Houses";
        flatsHousesCategory.identifier = @"flats-houses";
        flatsHousesCategory.browsable = NO;
        [categoryList addObject:flatsHousesCategory];
        
            // For rent
            GumtreeCategory *forRentCategory;
            forRentCategory = [[GumtreeCategory alloc] init];
            forRentCategory.name = @"For Rent";
            forRentCategory.identifier = @"flats-houses:rent";
            forRentCategory.browsable = YES;
            forRentCategory.parent = flatsHousesCategory;
            [categoryList addObject:forRentCategory];
            
                category = [[GumtreeCategory alloc] init];
                category.name = @"Offered";
                category.identifier = @"flats-houses:rent:offered";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Wanted";
                category.identifier = @"flats-houses:rent:wanted";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Holiday Rentals";
                category.identifier = @"flats-houses:rent:holiday-rentals";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Home Swap";
                category.identifier = @"flats-houses:rent:home-swap";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Office Space";
                category.identifier = @"flats-houses:rent:office-space";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Parking, Storage & Garage";
                category.identifier = @"flats-houses:rent:psg";
                category.browsable = YES;
                category.parent = forRentCategory;
                [categoryList addObject:category];
            
            [forRentCategory release];
            
            // To share
            GumtreeCategory *toShareCategory;
            toShareCategory = [[GumtreeCategory alloc] init];
            toShareCategory.name = @"To Share";
            toShareCategory.identifier = @"flats-houses:share";
            toShareCategory.browsable = YES;
            toShareCategory.parent = flatsHousesCategory;
            [categoryList addObject:toShareCategory];
            
                category = [[GumtreeCategory alloc] init];
                category.name = @"Offered";
                category.identifier = @"flats-houses:share:offered";
                category.browsable = YES;
                category.parent = toShareCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Wanted";
                category.identifier = @"flats-houses:share:wanted";
                category.browsable = YES;
                category.parent = toShareCategory;
                [categoryList addObject:category];
            
            [toShareCategory release];
            
            // For sale
            GumtreeCategory *forSaleCategory;
            forSaleCategory = [[GumtreeCategory alloc] init];
            forSaleCategory.name = @"For Sale";
            forSaleCategory.identifier = @"flats-houses:sale";
            forSaleCategory.browsable = YES;
            forSaleCategory.parent = flatsHousesCategory;
            [categoryList addObject:forSaleCategory];
            
                category = [[GumtreeCategory alloc] init];
                category.name = @"Property in London";
                category.identifier = @"flats-houses:sale:london";
                category.browsable = YES;
                category.parent = forSaleCategory;
                [categoryList addObject:category];
                
                category = [[GumtreeCategory alloc] init];
                category.name = @"Property Overseas";
                category.identifier = @"flats-houses:sale:overseas";
                category.browsable = YES;
                category.parent = forSaleCategory;
                [categoryList addObject:category];
            
            [forSaleCategory release];
        
        [flatsHousesCategory release];
        
        // Services
        category = [[GumtreeCategory alloc]    init];
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
        category.name = @"Stuff for Sale";
        category.identifier = @"stuff";
        category.browsable = YES;
        [categoryList addObject:category];
        
        // Store in self.data, dispose of local variables
        self.data = categoryList;
        [categoryList release];
        [category release];
    }
    
    - (NSArray *)topLevelCategories {
        if (self.cachedTopLevelCategories == nil) {
            // Top-level categories are cached to improve performance... only filter self.data
            // if nothing exists in the cache (self.cachedTopLevelCategories)
            NSPredicate *predicate = [NSPredicate predicateWithFormat:@"parent = nil"];
            self.cachedTopLevelCategories = [self.data filteredArrayUsingPredicate:predicate];
        }
        
        return self.cachedTopLevelCategories;
    }
    
    - (GumtreeCategory *)categoryAtIndexPath:(NSIndexPath *)indexPath {
        NSArray *topLevelCategories = [self topLevelCategories];
        GumtreeCategory *category = [topLevelCategories objectAtIndex:[indexPath indexAtPosition:1]];
        
        for (int itercounter = 2; itercounter < [indexPath length]; itercounter++) {
            // For each sublevel, get the children of the parent category and choose the
            // category as the index of that array.
            int index = [indexPath indexAtPosition:itercounter];
            NSPredicate *predicate = [NSPredicate predicateWithFormat:@"parent == %@", category];
            NSArray *children = [self.data filteredArrayUsingPredicate:predicate];
            category = [children objectAtIndex:index];
        }
        
        return category;
    }
    
    #pragma mark UITableViewDataSource
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        /* We're not using sections, so just return the number of top-level categories */
        return [[self topLevelCategories] count];
    }
    
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        static NSString *cellIdentifier = @"GumtreeCategoryCell";
        NSLog(@"%@", indexPath);
        
        // Dequeue or create a table cell for the category
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell == nil) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
        GumtreeCategory *categoryAtIndex = [self categoryAtIndexPath:indexPath];
        cell.textLabel.text = categoryAtIndex.name;
        
        return cell;
    }
    #pragma mark -
@end
