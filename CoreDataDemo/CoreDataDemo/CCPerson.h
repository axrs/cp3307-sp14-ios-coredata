//
//  CCPerson.h
//  CoreDataDemo
//
//  Created by Alexander Scott on 20/05/2014.
//  Copyright (c) 2014 CADCoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CCPerson : NSManagedObject

@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

@end
