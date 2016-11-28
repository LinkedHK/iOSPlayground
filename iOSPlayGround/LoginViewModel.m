//
//  LoginViewModel.m
//  iOSPlayGround

#import "LoginViewModel.h"
#include <ReactiveObjC/ReactiveObjC.h>
#import "PGAccountManager.h"
@import Firebase;
@interface LoginViewModel ()


@property (strong, nonatomic) RACCommand * loginAnonCommand;

@property (strong, nonatomic) RACSignal *  loginCompleteSignal;


@end

@implementation LoginViewModel


-(id)init{
    
    if (self = [super init]) {
        
        _loginAnonCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {

            return [self doLoginAnon];
        }];
    }
    return self;
}

-(RACSignal*) doLoginAnon{
    
    
    return [RACSignal startLazilyWithScheduler:[RACScheduler schedulerWithPriority:RACSchedulerPriorityDefault] block:^(id<RACSubscriber>  _Nonnull subscriber) {
        
      [[PGAccountManager signInAnon] subscribeNext:^(FIRUser *  _Nullable x) {
        [subscriber sendNext:x];
        [subscriber sendCompleted];
          
      } error:^(NSError * _Nullable error) {
          [subscriber sendError:error];
      } ];
    
    }];
}


-(RACCommand*)loginAnonCommand{
    
    if (!_loginAnonCommand) {
        
        _loginAnonCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
            
            return [self doLoginAnon];
        }];
    }
    return _loginAnonCommand;
}
@end
