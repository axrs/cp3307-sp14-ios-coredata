//
//  main.m
//  CoreDataDemo
//
//  Created by Alexander Scott on 20/05/2014.
//  Copyright (c) 2014 CADCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <PixateFreestyle/PixateFreestyle.h>
#import "CCAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        [PixateFreestyle initializePixateFreestyle];

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([CCAppDelegate class]));
    }
}
