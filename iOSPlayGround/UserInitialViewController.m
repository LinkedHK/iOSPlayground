//
//  ViewController.m
//  iOSPlayGround



#import "UserInitialViewController.h"
#import "PGAccountManager.h"
#include <ReactiveObjC/ReactiveObjC.h>
#include <Realm/Realm.h>
@import Firebase;

static NSString * loginSegue = @"ShowLoginSeg";

@interface UserInitialViewController ()



@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation UserInitialViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self onUnknownUser];
}

-(void)onUserAuthorized{

    
    
}
-(void)onUnknownUser{



}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:loginSegue]) {
        
       UIViewController * vc =  segue.destinationViewController;
    
        [segue perform];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
