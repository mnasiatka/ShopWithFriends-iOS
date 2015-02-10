//
//  ViewController.m
//  ShopWithFriends
//
//  Created by Matthew Nasiatka on 2/10/15.
//  Copyright (c) 2015 Georgia Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *LoginTextfieldUsername;
@property (weak, nonatomic) IBOutlet UITextField *LoginTextfieldPassword;
@property (weak, nonatomic) IBOutlet UINavigationItem *mNavigationItem;
@property (weak, nonatomic) IBOutlet UITextField *RegisterTextfieldName;
@property (weak, nonatomic) IBOutlet UITextField *RegisterTextfieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *RegisterTextfieldUsername;
@property (weak, nonatomic) IBOutlet UITextField *RegisterTextfieldPassword;
@property (weak, nonatomic) IBOutlet UIButton *LoginButtonLogin;
@property (weak, nonatomic) IBOutlet UIButton *LoginButtonRegister;
@property (weak, nonatomic) IBOutlet UIButton *RegisterButtonRegister;
@property (weak, nonatomic) IBOutlet UINavigationItem *mNavigationItem2;

@end

@implementation ViewController

NSString *username = @"admin";
NSString *password = @"pass";
int button = -1; // 0-LoginLogin, 1-LoginRegister, 2-RegisterRegister
- (IBAction)onLoginLogin:(UIButton *)sender {
    button = 0;
}
- (IBAction)onLoginRegister:(id)sender {
    button = 1;
}
- (IBAction)onRegisterRegister:(id)sender {
    button = 2;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (button == 0) { // login from login
        if ([_LoginTextfieldUsername.text isEqual:username] && [_LoginTextfieldPassword.text isEqual:password]) {
            return true;
        }
    } else if (button == 1) { // register from login
        return true;
    } else if (button == 2) { // register from register
        return false;
    }
    return false;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _LoginTextfieldUsername.placeholder = @"Username";
    _LoginTextfieldPassword.placeholder = @"Password";
    _mNavigationItem.title = @"Login";
    _mNavigationItem2.title = @"Register";
    _RegisterTextfieldName.placeholder = @"Name";
    _RegisterTextfieldEmail.placeholder = @"Email";
    _RegisterTextfieldUsername.placeholder = @"Username";
    _RegisterTextfieldPassword.placeholder = @"Password";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
