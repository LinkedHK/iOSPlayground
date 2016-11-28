//
//  PGAccountManager.h
//  iOSPlayGround


#import <Foundation/Foundation.h>
#include <ReactiveObjC/ReactiveObjC.h>
@interface PGAccountManager : NSObject



+(RACSignal*)signInAnon;

+(PGAccountManager*)defaultManager;




@end
