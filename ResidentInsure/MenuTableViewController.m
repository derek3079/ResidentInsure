//
//  MenuTableViewController.m
//  ResidentInsure
//
//  Created by Derek on 4/23/15.
//  Copyright (c) 2015 WiredApplications. All rights reserved.
//

#import "MenuTableViewController.h"
#import "SelectedTableViewCell.h"

@interface MenuTableViewController ()
@property(nonatomic, strong)UIView *selectedCellBackgroundColor;
@property (assign, nonatomic) BOOL isSelected;


@end

@implementation MenuTableViewController
static NSString * const reuseIdentifier = @"MCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [UIView new];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"MCell"];
    self.tableView.backgroundColor = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:1];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MCell" forIndexPath:indexPath];
    
    if (self.isSelected) {
        cell.textLabel.textColor = [UIColor whiteColor];
        self.selectedCellBackgroundColor = [UIView new];
        self.selectedCellBackgroundColor.backgroundColor = [UIColor redColor];
        [self.tableView addSubview:self.selectedCellBackgroundColor];
        cell.selectedBackgroundView = self.selectedCellBackgroundColor;
        
        return cell;

    }
    
    cell.textLabel.textColor = [UIColor redColor];
    cell.backgroundColor = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:1];


    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"My Policies";
            cell.textLabel.numberOfLines = 0;
            break;
        case 1:
            cell.textLabel.text = @"Payment Info";

            break;
        case 2:
            cell.textLabel.text = @"Policy Notes";

            break;
        case 3:
            cell.textLabel.text = @"Events";

            break;
        default:
            cell.textLabel.text = @"Docs";

            break;
    }
    
    
    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.isSelected = !self.isSelected;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
