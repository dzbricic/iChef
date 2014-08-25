//
//  FirstViewController.m
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "FirstViewController.h"
#import "ReceptiTableViewController.h"
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

- (IBAction)infoClicked:(id)sender {
    [self performSegueWithIdentifier:@"slanaVeza" sender:sender];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"slanaVeza";
    slanaKategorijaCell *cell = [tableView
                                        dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil)
    {
        cell = [[slanaKategorijaCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.text = [_kategorijeNiz objectAtIndex:indexPath.row];
    /*long row = [indexPath row];
     cell.receptiSlatka.text = _slatkiRecepti[row];*/
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"slanaVeza"])
            {
                NSIndexPath *indeks = [self.slanaKategorije indexPathForSelectedRow];
                NSString *string = [_kategorijeNiz objectAtIndex:indeks.row];
                ReceptiTableViewController *slanaJelaTable = (ReceptiTableViewController*)[segue destinationViewController];

                //∫slanaJelaTable;
                //[slanaJelaTable posaljiK];
                //NSIndexPath *slaniIndexPath = [self.tableView indexPathForSelectedRow];
                
            
                
        }
}

@end
