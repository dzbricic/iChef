//
//  Jela.h
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Jela : NSManagedObject

@property (nonatomic, retain) NSString * kategorija;
@property (nonatomic, retain) NSString * naziv;
@property (nonatomic, retain) NSString * recept;
@property (nonatomic, retain) NSString * tip;

@end
