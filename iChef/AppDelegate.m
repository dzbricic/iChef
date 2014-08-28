//
//  AppDelegate.m
//  iChef
//
//  Created by user24011 on 8/21/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "AppDelegate.h"
#import "Jela.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

#import <CoreData/CoreData.h>


@implementation AppDelegate


 //Explicitly write Core Data accessors

- (NSManagedObjectContext *) managedObjectContext
{
    if (managedObjectContext != nil) {
        return managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
 
    if (coordinator != nil) {
 
        managedObjectContext = [[NSManagedObjectContext alloc] init];
 
        [managedObjectContext setPersistentStoreCoordinator: coordinator];
    }
 
    return managedObjectContext;
}
 
 - (NSManagedObjectModel *)managedObjectModel {
 
     if (managedObjectModel != nil) {
         return managedObjectModel;
     }
     
     managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
 
     return managedObjectModel;
}
 
 - (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
 
     if (persistentStoreCoordinator != nil) {
         return persistentStoreCoordinator;
     }
 
     NSURL *storeUrl = [NSURL fileURLWithPath: [[self applicationDocumentsDirectory]
                                                stringByAppendingPathComponent: @"baza.sqlite"]];
     NSError *error = nil;
     persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc]
                                   initWithManagedObjectModel:[self managedObjectModel]];
     if(![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                  configuration:nil URL:storeUrl options:nil error:&error]) {
         //Error for store creation should be handled in here
     }

     return persistentStoreCoordinator;
}

- (NSString *)applicationDocumentsDirectory {
    
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

// (...Existing Application Code...)


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UITabBarController *pocetni = self.window.rootViewController;
    UINavigationController *navigationController = (UINavigationController *)pocetni.viewControllers[0];
    FirstViewController *controller = (FirstViewController *)navigationController.topViewController;
    controller.managedObjectContext = self.managedObjectContext;
    
 //UITabBarController *pocetni1 = self.window.rootViewController;
    UINavigationController *navigationController1 = (UINavigationController *)pocetni.viewControllers[1];
    SecondViewController *controller1 = (SecondViewController *)navigationController1.topViewController;
    controller1.managedObjectContext = self.managedObjectContext;

    NSManagedObjectContext *context = [self managedObjectContext];
    Jela *j = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j.tip = @"slana";
    j.kategorija = @"sarma";
    j.naziv = @"Lagana sarma";
    j.recept = @"Glavici kupusa izdubite korijen, odvojite listove, uronite ih u kipuću vodu i blanširajte nekoliko minuta.Na maslinovu ulju propirjajte sitno nasjeckane šampinjone dok sva tekućina ne ispari.Fant za punjenu papriku i sarmu prelijte vinom i ostavite stajati 10 minuta.U zdjelu stavite pureća prsa narezana na sitne kockice, rajčicu kojoj ste ogulili kožicu, uklonili sjemenke i također je narezali na kocke, rižu, ohlađene gljive i Fant za punjenu papriku i sarmu pa sve dobro promiješajte.Listovima kupusa istanjite zadebljale dijelove, na svaki stavite 1 žlicu nadjeva pa savijajte sarme od zadebljalog dijela prema kraju lista. Krajeve dobro uvijte da se sarme pri kuhanju ne odmotaju.Ostatak kupusa narežite na rezance i stavite na dno posude, na njih kružno poslažite sarme, a zatim ih zalijte vodom koju ste prije toga prokuhali s Vegetom i koncentratom rajčice. Kuhajte 15-20 minuta ili dok riža ne omekša.";
    
    Jela *j1 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j1.tip = @"slana";
    j1.kategorija = @"sarma";
    j1.naziv = @"Mesna sarma od salate locike";
    j1.recept = @"Listove loćike operite, kratko blanširajte, ohladite u hladnoj vodi i ocijedite.U zdjeli izmiješajte meso, sitno nasjeckan luk, rižu, rajčice kojima ste odstranili sjemenke i kožicu te ih narezali na kockice, nasjeckan peršin, Vegetu, papar i kim.Od listova loćike i mesa oblikujte sarmice. Sarmice složite u posudu i prelijte uljem i vodom. Pokriveno kuhajte oko 30 minuta.";
    
    Jela *j2 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j2.tip = @"slana";
    j2.kategorija = @"sarma";
    j2.naziv = @"Sarma sa kiselim kupusom, junecim mesom i rizom";
    j2.recept = @"Nasjeckamo luk i stavimo ga da se pirja, a za to vrijeme nasjeckamo cesnjak. Cesnjak kratko poprzimo s lukom.Zacinimo meso solju i paprom i dodamo opranu rizu. Dodamo mljevenu crvenu papriku, jaje i prstohvat persina. Izmijesamo smjesu da se zacini ujedine.Dodamo poprzeni luk i cesnjak. Ponovo izmjesamo nadjev.Odvojimo listove kupusa koje napunimo nadjevom. Ukoliko je kupus jako kiseo, listove isperemo pod vodom. Sarme zamotamo, a krajeve utisnemo da se ne raspadnu.Ostatak kupusa narezemo na tanke rezance koji ce nam posluziti kao podloga, da se sarma ne primi za dno.Sarme polozimo  u posudu za kuhanje, a ostatak kupusa stavimo preko njih. Dodamo crvenu papriku te podlijemo vodom da prekrije sarme. Poklopimo posudu i kada sarma zavrije smanjimo vatru te kuhamo jos cca. 2 - 2,5 sata.Kada je sarma gotova, radimo zaprsku. U posebnoj tavici na vrelo ulje dodamo brasno koje stalno mijesamo da ne zagori, zatim dodamo crvenu papriku i kratko poprzimo. Dodamo hladne vode (i malo pirea od rajcice po zelji) te kuhamo jos par trenutaka, zatim zapršku prelijemo preko sarme i čekamo da sve zajedno prokuha još 10-15 minuta. Jelo je spremno za serviranje.";
    
    Jela *j3 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j3.tip = @"slana";
    j3.kategorija = @"sarma";
    j3.naziv = @"Sarma od lipova lisca";
    j3.recept = @"Uzeti 300g goveđeg mesa i 100g telećeg mesa. Sve to samljeti. U šerpi ispržiti sitno sječen luk, pa pripremiti s mesom nadev kao za svaku sarmu. Meso se može ispržiti s lukom, a može se ostaviti i presno. Skinuti šerpu sa štednjaka, dodati bibera, soli, 1 celo jaje i 1 šolju za crnu kafu obarena pirinča. Ako je meso prženo ostaviti ga da se ohladi. Mladom lipovom lišću otkinuti peteljke, popariti ga vrelom vodom, a zatim izvaditi na dasku da se cedi. Sastavljati po dva lista zajedno, pošto su oni mali, a naličja lista okrenuti da se na njih kašičicom stavlja meso, pa savijati ne mnogo velike sarme. Sarme složiti u jednu šerpu i naliti ih vodom ili supom od kostiju. Šerpu poklopiti i metnuti na kraj štednjaka ( e sad pošto je ovde reč o šporetu na drva u modernoj varijanti treba jelo kuvati na najnižoj temperaturi ) da vri jelo 3/4 sata, a zatim napraviti zapršku. U jednu šerpu staviti kašiku masti i dve omanje kašike brašna. Kad brašno porumeni, dodati malo aleve paprike, a može biti i bez paprike. Zapršku dobro izmešati da nema grudvica, pa je sipati preko sarme. Opet šerpu staviti na štednjak da se kuva još pola sata. Zatim je izmaći na kraj štednjaka, kako se sarma ne bi slučajno raspala. Kiselo mleko za ovu sarmu služiti posebno.";
    
    Jela *j4 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j4.tip = @"slana";
    j4.kategorija = @"gulas";
    j4.naziv = @"";
    j4.recept = @"";
    
    Jela *j5 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j5.tip = @"slatka";
    j5.kategorija = @"kolaci";
    j5.naziv = @"kolac sa orasima";
    j5.recept = @"";
    
    Jela *j6 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j6.tip = @"slatka";
    j6.kategorija = @"palacinci";
    j6.naziv = @"palacinci sa nutelom";
    j6.recept = @"";
    
    Jela *j7 = [NSEntityDescription insertNewObjectForEntityForName:@"Jela" inManagedObjectContext:context];
    j7.tip = @"slatka";
    j7.kategorija = @"palacinci";
    j7.naziv = @"palacinci sa orasima";
    j7.recept = @"";
    
    

    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
 
 @end

