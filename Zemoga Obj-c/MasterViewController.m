//
//  MasterViewController.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController () <MailTableViewCellDelegate>

@property (nonatomic) MasterViewModel *vmodel;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Your Messages"];
    [AppAppearance setNavigationBarApperanceTo:self.navigationController.navigationBar];
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    @weakify(self)
    self.viewModel = [[MasterViewModel alloc] init];
    [_viewModel.rac_getMessages subscribeNext:^(id x) {
        @strongify(self);
        [self.tableView reloadData];
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Message *object = _viewModel.messages[indexPath.row];
        [object setUnread: NO];
        [self.tableView reloadData];
        [self.tableView selectRowAtIndexPath:indexPath animated:UITableViewRowAnimationNone scrollPosition:UITableViewRowAnimationNone];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _viewModel.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.delegate = self;
    [cell configureCellWithMessage:_viewModel.messages[indexPath.row]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

/**
 *  MailTableViewCell delegate method, this method deletes the cell from the table
 *
 *  @param cell Cell to delete
 */
- (void)didTappedDismissButton:(id)cell {
    MailTableViewCell *mailCell = (MailTableViewCell *)cell;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:mailCell];
    NSArray *indexesPath = [[NSArray alloc] initWithObjects:indexPath, nil];
    [self.tableView beginUpdates];
    [self.tableView deleteRowsAtIndexPaths:indexesPath withRowAnimation:UITableViewRowAnimationLeft];
    [_viewModel.messages removeObjectAtIndex:indexPath.row];
    [self.tableView endUpdates];
}

/**
 *  Removes all the messages from the table
 *
 *  @param sender Button that triggers the action
 */
- (IBAction)dismissAllMessagesAction:(id)sender {
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    for (int i = 0; i < _viewModel.messages.count; i++) {
        
        [indexPaths addObject:[NSIndexPath indexPathForRow:i inSection:0]];
    }
    [self.tableView beginUpdates];
    [self.tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationLeft];
    [_viewModel.messages removeAllObjects];
    [self.tableView endUpdates];
}
@end