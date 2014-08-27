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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _nizJela = @[@"Sarma",@"Sarma2", @"zeljanica"];
    self.nizRezultata = [NSMutableArray arrayWithCapacity:[self.nizJela count]];
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
    
    if(self.pretragaTabela == self.searchDisplayController.searchResultsTableView)
        {
            return [self.nizRezultata count];
        }
    else return [self.nizJela count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"celijaPretraga";
    UITableViewCell *cell = [self.pretragaTabela dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //pretragaCell *cell = [self.pretragaTabela dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if(self.pretragaTabela == self.searchDisplayController.searchResultsTableView)
    {
        cell.textLabel.text = [self.nizRezultata objectAtIndex:indexPath.row];
    }
    else
    // Configure the cell...
    cell.textLabel.text = [self.nizJela objectAtIndex:indexPath.row];
    
    return cell;
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"pretragaRezultat"])
    {
        NSIndexPath *indeks = [self.pretragaTabela indexPathForSelectedRow];
        NSString *string = [_nizJela objectAtIndex:indeks.row];
        [[segue destinationViewController] posaljiNaziv:string];
        
    }
}


#pragma Search Metods


- (void)filterContentForSearchText : (NSString*)searchText scope:(NSString*)scope
{
    [self.nizRezultata removeAllObjects];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] %@", searchText];
    self.nizRezultata = [NSMutableArray arrayWithArray: [self.nizJela filteredArrayUsingPredicate:predicate]];
}


-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    return YES;
}
@end
