//
//  FileAdapter.h
//  iOSPlayGround



#import <Foundation/Foundation.h>


@protocol FileAdapterInterface <NSObject>

-(void)sendFile: (NSString*)filepath;
-(void)downloadFile: (NSURL*)filurl;


@end

@interface FileAdapter : NSObject<FileAdapterInterface>



@end
