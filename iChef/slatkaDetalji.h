//
//  slatkaDetaljiViewController.h
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface slatkaDetalji : UIViewController

@property (weak, nonatomic) NSString *nazivRecepta;

@property (weak, nonatomic) IBOutlet UIImageView *slatkaSlika;

@property (weak, nonatomic) IBOutlet UILabel *slatkaNaziv;

@property (weak, nonatomic) IBOutlet UITextView *slatkaRecept;

-(void)posaljiNaziv:(NSString*)nazivRecepta;

@end
