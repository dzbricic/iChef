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
	
    //upisuje naziv recepta na osnovu poslanog podatka
    self.nazivJela.text = self.nazivRecepta;
    
    //odabire sliku na osnovu naziva recepta
    NSMutableString *naziv = [[NSMutableString  alloc] init];
    [naziv appendString:self.nazivRecepta];
    [naziv appendString:@".jpg"];
    self.slikaJela.image = [UIImage imageNamed:naziv];
    
    //treba dodati iščitavanje recepta iz baze na osnovu imena
    
    self.navigationController.navigationBarHidden = false;

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
