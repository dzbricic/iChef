//
//  slanaDetalji.h
//  iChef
//
//  Created by merimaH on 8/26/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface slanaDetalji : UIViewController



@property (nonatomic, strong) NSString *nazivRecepta;


@property (weak, nonatomic) IBOutlet UIImageView *slikaJela;

@property (weak, nonatomic) IBOutlet UILabel *nazivJela;

@property (weak, nonatomic) IBOutlet UITextView *recept;

-(void)posaljiNaziv:(NSString*)nazivRecepta;

@end
