//
//  pretraga.m
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "pretraga.h"
#import "pretragaCell.h"
#import "slanaDetalji.h"
#import "Jela.h"

@interface pretraga ()

@property(nonatomic, strong) NSMutableArray *nizRezultata;

@end

@implementation pretraga

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = true;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.nizJela = @[@"Lagana sarma",@"Sarma2", @"zeljanica"];
    self.nizRezultata = [NSMutableArray arrayWithCapacity:[self.nizJela count]];
    
    self.navigationController.navigationBarHidden = true;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    //if(self.pretragaTabela == self.searchDisplayController.searchResultsTableView)
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        return [self.nizRezultata count];
    }
    else
    {
        return [self.nizJela count];
    }
    
}

/*-(pretragaCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"celijaPretraga";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    pretragaCell *cell = (pretragaCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil)
    {
        cell = [[pretragaCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //if(self.pretragaTabela == self.searchDisplayController.searchResultsTableView)
    if(tableView == self.searchDisplayController.searchResultsTableView)
    {
        cell.textLabel.text = [self.nizRezultata objectAtIndex:indexPath.row];
    }
    else
    // Configure the cell...
    {
        cell.textLabel.text = [self.nizJela objectAtIndex:indexPath.row];
    }
    
    return cell;
    
}*/

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"celijaPretraga";
    	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //if(self.pretragaTabela == self.searchDisplayController.searchResultsTableView)
    if(tableView == self.searchDisplayController.searchResultsTableView)
    {
        
        cell.textLabel.text = [self.nizRezultata objectAtIndex:indexPath.row];
    }
    else
        // Configure the cell...
    {
        cell.textLabel.text = [self.nizJela objectAtIndex:indexPath.row];
    }
    
    return cell;
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"pretragaRezultat"])
    {
       /* NSIndexPath *indeks = [self.pretragaTabela indexPathForSelectedRow];
        NSString *string = [_nizJela objectAtIndex:indeks.row];
        [[segue destinationViewController] posaljiNaziv:string];
        */
        
        NSIndexPath *indeks = nil;
        NSString *j = nil;
        
        if(self.searchDisplayController.active){
            indeks = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            j = [_nizRezultata objectAtIndex:indeks.row];
          }
        else
        {
            indeks = [self.pretragaTabela indexPathForSelectedRow];
            j = [_nizJela objectAtIndex:indeks.row];
        }
        
        [[segue destinationViewController] posaljiNaziv:j];
        
    }
}


#pragma Search Metods


- (void)filterContentForSearchText : (NSString*)searchText scope:(NSString*)scope
{
    [self.nizRezultata removeAllObjects];
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@", searchText];
    
    self.nizRezultata = [NSMutableArray arrayWithArray: [self.nizJela filteredArrayUsingPredicate:resultPredicate]];
}



-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    
    return YES;
}
@end
