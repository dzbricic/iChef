//
//  FirstViewController.m
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "FirstViewController.h"
#import "ReceptiSlanaTableViewController.h"
#import "slanaKategorijaCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _kategorijeNiz = @[@"sarmica"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //broj elemenata iz niza
    //NSPredicate ya povezivanje , iščitavanje kategorija svih i distinct bla bla
    return _kategorijeNiz.count;
}



-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    slanaKategorijaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"slanaCelijaPrvi" forIndexPath:indexPath];
    //[self configureCell:cell atIndexPath:indexPath];
    //return cell;
    
    
    if (cell == nil)
    {
        cell = [[slanaKategorijaCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"slanaCelijaPrvi"];
    }
    
    cell.textLabel.text = [_kategorijeNiz objectAtIndex:indexPath.row];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"slanaVeza"])
    {
        NSIndexPath *indeks = [self.slanaKategorije indexPathForSelectedRow];
        NSString *string = [_kategorijeNiz objectAtIndex:indeks.row];
       // ReceptiSlanaTableViewController *slanaJelaTable =
        [segue destinationViewController];
        
        //[[segue destinationViewController] posaljiKategoriju:string];
        
    }
}



@end
