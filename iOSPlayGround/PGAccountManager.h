//
//  PGAccountManager.h
//  iOSPlayGround


#import <Foundation/Foundation.h>
#include <ReactiveObjC/ReactiveObjC.h>
#include <Firebase/Firebase.h>
@interface PGAccountManager : NSObject



+(RACSignal*)signInAnon;

+(PGAccountManager*)defaultManager;

+(FIRUser*)hasCredentials;


@end
