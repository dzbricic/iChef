//
//  SecondViewController.m
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "SecondViewController.h"
#import "ReceptiSlatkaTableViewController.h"
#import "slatkaKategorijaCell.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //_kategorijeNizSlatka = @[@"palacinci", @"sladoled"];
    // foreach in self.fetchedResultsController
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
    //return _kategorijeNizSlatka.count;
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][section];
    return [sectionInfo numberOfObjects];

}
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    NSManagedObject *object = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = [[object valueForKey:@"kategorija"] description];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    slatkaKategorijaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"slatkaCelijaDrugi" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
    
    
    /*if (cell == nil)
    {
        cell = [[slatkaKategorijaCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"slatkaCelijaDrugi"];
    }
    
    cell.textLabel.text = [_kategorijeNizSlatka objectAtIndex:indexPath.row];
    return cell;*/
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"slatkaVeza"])
    {
       /* NSIndexPath *indeks = [self.slatkaKategorija indexPathForSelectedRow];
        NSManagedObject *object = [[self fetchedResultsController] objectAtIndex:indeks];
        // ReceptiSlanaTableViewController *slanaJelaTable =
        //[segue destinationViewController];
        
        [[segue destinationViewController] posaljiKategoriju:object];*/
        
    }
}

- (NSFetchedResultsController *)fetchedResultsController
{
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"tip == %@", @"slatka" ];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    // Edit the entity name as appropriate.
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Jela" inManagedObjectContext:self.managedObjectContext];
    
    //[fetchRequest ];
    [fetchRequest setPredicate:predicate];
    [fetchRequest setEntity:entity];
   // [fetchRequest setPropertiesToGroupBy:[NSArray arrayWithObject:@"kategorija"]];
    
    
    // Set the batch size to a suitable number.
    [fetchRequest setFetchBatchSize:20];
    
    // Edit the sort key as appropriate.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"tip" ascending:NO];
    NSArray *sortDescriptors = @[sortDescriptor];
    
    [fetchRequest setSortDescriptors:sortDescriptors];
    
    
    // Edit the section name key path and cache name if appropriate.
    // nil for section name key path means "no sections".
    NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:@"Master"];
    aFetchedResultsController.delegate = self;
    self.fetchedResultsController = aFetchedResultsController;
    
    
	NSError *error = nil;
	if (![self.fetchedResultsController performFetch:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
	    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
	    abort();
	}
    
    return _fetchedResultsController;
}


@end
