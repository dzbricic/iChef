//
//  FirstViewController.m
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)collectionView1:(UICollectionView *)collectionView1 didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
{
    DetailViewController *viewController = [[DetailViewController alloc] init];
    [self.navigationController ]
}
@end
