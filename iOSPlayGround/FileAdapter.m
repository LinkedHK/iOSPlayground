//
//  FileAdapter.m
//  iOSPlayGround


#import "FileAdapter.h"
#import "Sys.h"

@implementation FileAdapter


-(void)sendFile: (NSString*)filepath{
    
    [Sys MyLog:@"Send Default File"];
}
-(void)downloadFile: (NSURL*)filurl{
      [Sys MyLog:@"Download default File"];
}



@end
