//
//  FirstViewController.h
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) IBOutlet UITableView *slanaKategorije;

@property NSArray *kategorijeNiz;



@end
