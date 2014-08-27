//
//  slatkaDetaljiViewController.m
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "slatkaDetalji.h"

@interface slatkaDetalji ()

@end

@implementation slatkaDetalji

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
    
    //upisuje naziv recepta na osnovu poslanog podatka
    self.slatkaNaziv.text = self.nazivRecepta;
    
    //odabire sliku na osnovu naziva recepta
    NSMutableString *naziv = [[NSMutableString  alloc] init];
    [naziv appendString:self.nazivRecepta];
    [naziv appendString:@".jpg"];
    self.slatkaSlika.image = [UIImage imageNamed:naziv];
    
    //treba dodati iščitavanje recepta iz baze na osnovu imena
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)posaljiNaziv:(NSString*)nazivRecepta;
{
    self.nazivRecepta = nazivRecepta;
}

@end
