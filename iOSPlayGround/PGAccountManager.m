//
//  PGAccountManager.m
//  iOSPlayGround


#import "PGAccountManager.h"
#import <CocoaLumberjack/CocoaLumberjack.h>

@import Firebase;

@implementation PGAccountManager



+(RACSignal*)signInAnon{
    
    return [RACSignal startLazilyWithScheduler:[RACScheduler schedulerWithPriority:RACSchedulerPriorityDefault] block:^(id<RACSubscriber>  _Nonnull subscriber) {

        [[FIRAuth auth] signInAnonymouslyWithCompletion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            if (error == nil) {
               
                
                [subscriber sendNext:user];
                [subscriber sendCompleted];
            }else{
                [subscriber sendError:error];
            }
            
        }];
        
    }];
    
}




@end
