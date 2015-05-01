//
//  MyPoliciesTableViewController.m
//  ResidentInsure
//
//  Created by Derek on 4/22/15.
//  Copyright (c) 2015 WiredApplications. All rights reserved.
//

#import "MyPoliciesTableViewController.h"
#import "MenuTableViewController.h"
typedef NS_ENUM(NSInteger, myPolcies) {
    myPolciesIntroduction,
    myPolciesPolicyNumber,
    myPolciesInsuredInformation,
    myPolciesPaymentInformation
};

@interface MyPoliciesTableViewController ()

@end

@implementation MyPoliciesTableViewController
static NSString * const reuseIdentifier = @"PCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"PCell"];
    self.tableView.tableFooterView = [UIView new];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor  redColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu"]style:UIBarButtonItemStylePlain target:self action:@selector(menuButtonPressed)];
       self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"editPencileditPencil"]style:UIBarButtonItemStylePlain target:self action:nil];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)menuButtonPressed {
    
    MenuTableViewController *menuView = [MenuTableViewController new];
    [self showViewController:menuView sender:self];
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == myPolciesIntroduction) {
        return 1;
    } else if (section == myPolciesPolicyNumber){
        return 1;
    } else if (section == myPolciesInsuredInformation){
        return 6;
    } else {
        return 3;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    myPolcies myPoliciesSection = indexPath.section;
    switch (myPoliciesSection) {
        case myPolciesIntroduction:
            return 125;
            break;
        case myPolciesPolicyNumber:
            return 55;
            break;
        case myPolciesInsuredInformation:
            if(indexPath.row == 1){
                return 65;
            } else {
                return 44;
            }
            break;
        case myPolciesPaymentInformation:
            if (indexPath.row == 9) {
                return 120;
            } else {
            return 44;
        }
            break;
    }
}
//
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    if (section == myPolciesIntroduction) {
//        return @"";
//    } else if(section == myPolciesPolicyNumber){
//        return @"";
//    } else if (section == myPolciesInsuredInformation){
//        return @"Policy information";
//    } else {
//        return @"Payment information";
//    }
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PCell" forIndexPath:indexPath];
    myPolcies section = indexPath.section;
    
    UIFont *myFont = [UIFont fontWithName:@"Arial" size:15.0];
    UIFont *LargeFont = [UIFont fontWithName:@"Arial" size:16.0];
    
    switch (section) {
        case myPolciesIntroduction:
            cell.textLabel.text = @"*My Policies*"@" " @"Below contains all information for your current policies and payment information at the bottom of the page. Feel free to edit any information below as needed by clicking on the pencil icon at the top right.";
            cell.textLabel.numberOfLines = 0;
            cell.textLabel.font = LargeFont;
            break;
        case myPolciesPolicyNumber:
            cell.textLabel.text = @"Policy number:                      R123354623";
            break;
        case myPolciesInsuredInformation:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"Insured Name:                           Derek Hornberger";
                    cell.textLabel.font = myFont;
                    break;
                case 1:
                    cell.textLabel.text = @"Insured Address:    81 W 530 S Orem Utah 84058";
                    cell.textLabel.numberOfLines = 0;

                    cell.textLabel.font = myFont;

                    break;
                case 2:
                    cell.textLabel.text = @"Insured Property:";
                    cell.textLabel.font = myFont;

                    break;
                case 3:
                    cell.textLabel.text = @"Enrolled On:                                           04/05/2015";
                    cell.textLabel.font = myFont;

                    break;
                case 4:
                    cell.textLabel.text = @"Start Date:                                              04/05/2015";
                    cell.textLabel.font = myFont;

                    break;
                default:
                    cell.textLabel.text = @"Coverage Paid Through:";
                    cell.textLabel.font = myFont;

                    break;
            }
            break;
        default:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"Monthly Payment Amount:                         $25.00";
                    cell.textLabel.font = myFont;

                    break;
                case 1:
                    cell.textLabel.text = @"Next Payment:                                      04/05/2015";
                    cell.textLabel.font = myFont;

                    break;
                default:
                    cell.textLabel.text = @"Last Payment:                                      04/05/2016";
                    cell.textLabel.font = myFont;

                    break;
            }
            break;
    }
    return cell;
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
