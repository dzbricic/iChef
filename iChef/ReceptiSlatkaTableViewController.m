//
//  ReceptiSlatkaTableViewController.m
//  iChef
//
//  Created by user24011 on 8/24/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "ReceptiSlatkaTableViewController.h"
#import "ReceptiSlatkaTableViewCell.h"
#import "slatkaDetalji.h"

@interface ReceptiSlatkaTableViewController ()


@end

@implementation ReceptiSlatkaTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if([self.nazivKategorije isEqualToString:@"palacinci"])
        _slatkiRecepti = @[@"Palacinci",@"Palacinci s nutelom"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _slatkiRecepti.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
 static NSString *CellIdentifier = @"receptDrugi";
 ReceptiSlatkaTableViewCell *cell = [tableView
 dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil)
    {
        cell = [[ReceptiSlatkaTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [_slatkiRecepti objectAtIndex:indexPath.row];
    /*long row = [indexPath row];
    cell.receptiSlatka.text = _slatkiRecepti[row];*/
    return cell;
}

-(void)posaljiKategoriju:(NSString*)nazivKategorije
{
    self.nazivKategorije = nazivKategorije;
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"posaljiNaziv"])
    {
        NSIndexPath *indeks = [self.tableView indexPathForSelectedRow];
        NSString *string = [_slatkiRecepti objectAtIndex:indeks.row];
        // ReceptiSlanaTableViewController *slanaJelaTable =
        //[segue destinationViewController];
        
        [[segue destinationViewController] posaljiNaziv:string];
        
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
