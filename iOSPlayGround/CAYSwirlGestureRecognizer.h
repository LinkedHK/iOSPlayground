//
//  CAYSwirlGestureRecognizer.h
//  Sense Of Direction
//
//  Created by Scott Erholm on 10/14/13.
//  Copyright (c) 2013 Cayuse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIGestureRecognizerSubclass.h>
#import <UIKit/UITouch.h>

@class CAYSwirlGestureRecognizer;

@protocol CAYSwirlGestureRecognizerDelegate <UIGestureRecognizerDelegate>


-(void)touchDidBegin: (CAYSwirlGestureRecognizer*)getsureRexcogn  currentAngle:(CGFloat )currentAngle previousAngle:(CGFloat ) previousAngle;


@end

@interface CAYSwirlGestureRecognizer : UIGestureRecognizer

@property CGFloat currentAngle;
@property CGFloat previousAngle;
@property (nonatomic,weak ) id<CAYSwirlGestureRecognizerDelegate> mdelegate;
@end
