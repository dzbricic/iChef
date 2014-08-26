//

//  ReceptiSlanaTableViewController.h

//  iChef

//

//  Created by merimaH on 8/26/14.

//  Copyright (c) 2014 dzm. All rights reserved.

//



#import <UIKit/UIKit.h>



@interface ReceptiSlanaTableViewController : UITableViewController



@property(nonatomic, strong) NSArray *slaniRecepti;

@property(nonatomic, strong) NSArray *slaneSlike;



-(void)posaljiKategoriju:(NSString*)nazivKategorije;

//+(void)_keepAtLinkTime;



@end

