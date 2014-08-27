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
    _kategorijeNizSlatka = @[@"palacinci", @"sladoled"];
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
    return _kategorijeNizSlatka.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    slatkaKategorijaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"slatkaCelijaDrugi" forIndexPath:indexPath];
    //[self configureCell:cell atIndexPath:indexPath];
    //return cell;
    
    
    if (cell == nil)
    {
        cell = [[slatkaKategorijaCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"slatkaCelijaDrugi"];
    }
    
    cell.textLabel.text = [_kategorijeNizSlatka objectAtIndex:indexPath.row];
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"slatkaVeza"])
    {
        NSIndexPath *indeks = [self.slatkaKategorija indexPathForSelectedRow];
        NSString *string = [_kategorijeNizSlatka objectAtIndex:indeks.row];
        // ReceptiSlanaTableViewController *slanaJelaTable =
        //[segue destinationViewController];
        
        [[segue destinationViewController] posaljiKategoriju:string];
        
    }
}

@end
