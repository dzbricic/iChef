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

@property (strong, nonatomic) UIWindow *window;
<<<<<<< HEAD

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSString *)applicationDocumentsDirectory;

=======
>>>>>>> parent of 6c59b39... ostalo : provjeriti je li radi ovako insert i fetch za kupljenje i ubacivanje gdje već treba :D metode za popunjavanje detalja su ok , samo recept treba iščitati :D

@end
