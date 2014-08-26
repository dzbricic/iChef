//
//  slanaDetalji.m
//  iChef
//
//  Created by merimaH on 8/26/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "slanaDetalji.h"

@interface slanaDetalji ()

@end

@implementation slanaDetalji

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
    self.nazivJela.text = self.nazivRecepta;
    self.recept.text = @"Prokuhaj lišće grožđa. Umiješaj meso i rižu i začine. Zamotaj komadiće smjese u lišće. Skuhaj i napravi pred kraj crvenu zapršku i etooo.";
    self.slikaJela.image = [UIImage imageNamed:@"first.jpg"];
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
