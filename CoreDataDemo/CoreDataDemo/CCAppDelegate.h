//
//  CCAppDelegate.h
//  CoreDataDemo
//
//  Created by Alexander Scott on 20/05/2014.
//  Copyright (c) 2014 CADCoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCAppDelegate : UIResponder <UIApplicationDelegate>

@property(strong, nonatomic) UIWindow *window;

@property(readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property(readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property(readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;

- (NSURL *)applicationDocumentsDirectory;

- (NSArray *)allRecords;

- (void)deleteRecord:(NSManagedObject *)record;
@end
