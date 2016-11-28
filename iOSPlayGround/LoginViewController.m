//
//  LoginViewController.m
//  iOSPlayGround

#include <ReactiveObjC/ReactiveObjC.h>
#import "LoginViewController.h"
#import "LoginViewModel.h"
#import "Sys.h"

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

    [[[_loginViewModel loginAnonCommand] executionSignals] subscribeNext:^(id  _Nullable x) {
        
      
        [Sys MyLog:@"Do Login"];
    } error:^(NSError * _Nullable error) {
        
        [Sys MyLog:@"Do Errors"];
    }];
      
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
