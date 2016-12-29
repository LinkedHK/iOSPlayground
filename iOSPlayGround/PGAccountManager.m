//
//  PGAccountManager.m
//  iOSPlayGround


#import "PGAccountManager.h"
#import <CocoaLumberjack/CocoaLumberjack.h>

@import Firebase;




@implementation PGAccountManager


static NSString * authname = @"swChat";


+(RACSignal*)signInAnon{
    return [[RACSignal startLazilyWithScheduler:[RACScheduler schedulerWithPriority:RACSchedulerPriorityDefault] block:^(id<RACSubscriber>  _Nonnull subscriber) {

        [[FIRAuth auth] signInAnonymouslyWithCompletion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            if (error == nil) {
               
                [subscriber sendNext:user];
                [subscriber sendCompleted];
            }else{
                [subscriber sendError:error];
            }
            
        }];
        
    }] deliverOn:[RACScheduler mainThreadScheduler]];
    
}

-(id)init{
    if ( self = [super init]) {
        
   [FIRApp configure];
        
        
    }
    return self;
}


+(FIRUser*)hasCredentials{
  return   [[FIRAuth auth] currentUser];

}
+(PGAccountManager*)defaultManager{
    
    static dispatch_once_t onceToken;
    static PGAccountManager * manager = nil;
    
    dispatch_once(&onceToken, ^{
        manager = [[PGAccountManager alloc] init];
    });
    
    return manager;
    
}


@end
