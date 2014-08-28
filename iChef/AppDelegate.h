//
//  AppDelegate.h
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{

    NSManagedObjectModel *managedObjectModel;
 
    NSManagedObjectContext *managedObjectContext;
 
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSString *)applicationDocumentsDirectory;


@end
