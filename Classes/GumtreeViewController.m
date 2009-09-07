//
//  GumtreeViewController.m
//  Gumtree
//
//  Created by Oliver Beattie on 19/08/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GumtreeViewController.h"
#import "CategoryDataController.h"
#import "GumtreeCategory.h"

@implementation GumtreeViewController
    @synthesize dataController;
    - (void)viewDidLoad {
        dataController = [[CategoryDataController alloc] init];
        [super viewDidLoad];
    }
    
    #pragma mark Message forwarding for UITableViewDataSource
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return [dataController tableView:tableView numberOfRowsInSection:section];
    }
    
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        return [dataController tableView:tableView cellForRowAtIndexPath:indexPath];
    }
    #pragma mark -


    - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
        // Allow any orientation
        return YES;
    }

    - (void)didReceiveMemoryWarning {
        // Releases the view if it doesn't have a superview.
        [super didReceiveMemoryWarning];
        
        // Release any cached data, images, etc that aren't in use.
    }

    - (void)viewDidUnload {
        // Release any retained subviews of the main view.
        // e.g. self.myOutlet = nil;
    }
@end
