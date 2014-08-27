//
//  pretraga.h
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pretraga : UIViewController
<UITableViewDelegate, UITableViewDataSource,UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UITableView *pretragaTabela;

@property (nonatomic, strong) NSArray *nizJela;

- (void)filterContentForSearchText : (NSString*)searchText scope:(NSString*)scope;

@end
