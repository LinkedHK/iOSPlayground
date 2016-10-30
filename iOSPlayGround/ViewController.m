//
//  ViewController.m
//  iOSPlayGround



#import "ViewController.h"
#import "PGAccountManager.h"
#include <ReactiveObjC/ReactiveObjC.h>
@import Firebase;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    RACSignal * sign =  [_loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside];

    [[[sign flattenMap:^RACStream *(id value) {
        return [PGAccountManager signInAnon];
    }] deliverOn:[RACScheduler mainThreadScheduler]]
     subscribeNext:^(id  _Nullable x) {
         
     }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
