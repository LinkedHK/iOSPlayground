//
//  ClocksVC.m
//  iOSPlayGround

#import "ClocksVC.h"
#import "Sys.h"

@interface ClocksVC ()
@property (weak, nonatomic) IBOutlet UIView *cuircleView;
@property (weak, nonatomic) IBOutlet UIImageView *circleIcon;

@end

@implementation ClocksVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAYSwirlGestureRecognizer * recognizer =  [[CAYSwirlGestureRecognizer alloc] initWithTarget:self action:nil];
    
    recognizer.mdelegate = self;
    [_circleIcon addGestureRecognizer:recognizer];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchDidBegin: (CAYSwirlGestureRecognizer*)getsureRexcogn  currentAngle:(CGFloat )currentAngle previousAngle:(CGFloat ) previousAngle{

   NSString * currentAngleStr =  [NSString stringWithFormat:@"%f", currentAngle];
      NSString * prevAngleStr  =  [NSString stringWithFormat:@"%f", previousAngle];
    
    [Sys MyLog:currentAngleStr];
    [Sys MyLog:prevAngleStr];
    
}

@end
