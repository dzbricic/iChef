//
//  FirstViewController.h
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (strong, nonatomic) IBOutlet UICollectionViewCell *jelo1;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView1;

-(void)collectionView1:(UICollectionView *)collectionView1 didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

@end
