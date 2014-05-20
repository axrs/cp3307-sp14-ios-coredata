//
//  CCDataViewController.m
//  CoreDataDemo
//
//  Created by Alexander Scott on 20/05/2014.
//  Copyright (c) 2014 CADCoder. All rights reserved.
//

#import "CCDataViewController.h"
#import "CCAppDelegate.h"

@interface CCDataViewController ()

@end

@implementation CCDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveData:(id)sender {
    CCAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];

    NSManagedObjectContext *context = [appDelegate managedObjectContext];

    NSManagedObject *person;
    person = [NSEntityDescription insertNewObjectForEntityForName:@"CCPerson"
                                           inManagedObjectContext:context];

    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *age = [f numberFromString:_ageField.text];

    [person setValue:_nameField.text forKey:@"firstName"];
    [person setValue:_surnameField.text forKey:@"lastName"];
    [person setValue:age forKey:@"age"];

    NSError *error;
    [context save:&error];
    NSLog(@"Error: %@", error);

    UINavigationController *navController = self.navigationController;

    // Pop this controller and replace with another
    [navController popViewControllerAnimated:NO];
}
@end
