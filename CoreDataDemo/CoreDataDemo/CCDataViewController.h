//
//  CCDataViewController.h
//  CoreDataDemo
//
//  Created by Alexander Scott on 20/05/2014.
//  Copyright (c) 2014 CADCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCAppDelegate.h"

@interface CCDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property(weak, nonatomic) IBOutlet UITextField *nameField;
@property(weak, nonatomic) IBOutlet UITextField *surnameField;
@property(weak, nonatomic) IBOutlet UITextField *ageField;

- (IBAction)saveData:(id)sender;

@end
