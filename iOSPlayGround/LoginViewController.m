//
//  LoginViewController.m
//  iOSPlayGround

#include <ReactiveObjC/ReactiveObjC.h>
#import "LoginViewController.h"
#import "LoginViewModel.h"
#import "Sys.h"
@import Firebase;

@interface LoginViewController ()

@property(strong,nonatomic) LoginViewModel * loginViewModel;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _loginViewModel =   [[LoginViewModel alloc] init];
    [self doLIstenLogin];
    [[_loginViewModel loginAnonCommand] execute:nil];
}

-(void)doLIstenLogin{

    [[[[_loginViewModel loginAnonCommand] executionSignals] flatten ] subscribeNext:^(id  _Nullable x) {
        [Sys MyLog:x];
    }];
    [[[_loginViewModel loginAnonCommand] errors] subscribeNext:^(id  _Nullable x) {
        [Sys MyLog:@"Authorisation Error!"];
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
