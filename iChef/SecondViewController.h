//
//  SecondViewController.h
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *slatkaKategorija;

@property NSArray *kategorijeNizSlatka;

@end
