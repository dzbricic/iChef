//
//  ReceptiSlanaTableViewController.h
//  iChef
//
//  Created by merimaH on 8/26/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//



#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface ReceptiSlanaTableViewController : UITableViewController


@property(nonatomic, strong) NSArray *slaniRecepti;

@property(nonatomic, strong) NSArray *slaneSlike;

@property(nonatomic, strong) NSString *nazivKategorije;


-(void)posaljiKategoriju:(NSManagedObject*)nazivKategorije;



@end

