//
//  ReceptiSlatkaTableViewController.h
//  iChef
//
//  Created by user24011 on 8/24/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceptiSlatkaTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *slatkiRecepti;

-(void)posaljiKategoriju:(NSString*)nazivKategorije;


@property(nonatomic, strong) NSString *nazivKategorije;

@end
