//
//  ViewController.m
//  15 倒影
//
//  Created by MAC on 2017/9/5.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "ViewController.h"
#import "DGCopyView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DGCopyView *myView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //拿到底层View的layer,强转为复制层layer
    CAReplicatorLayer * layer = (CAReplicatorLayer*)_myView.layer;
    
    layer.instanceCount = 2;
    
    //向下平移一个图片高度
    CATransform3D  transform = CATransform3DMakeTranslation(0,_myView.bounds.size.height, 0);
    //绕x轴旋转180˚
    transform = CATransform3DRotate(transform, M_PI, 1, 0, 0);
    
    layer.instanceTransform = transform;
    
    //添加毛玻璃效果
    layer.instanceAlphaOffset = -0.5;
    //也可以添加其他颜色的毛玻璃
//    layer.instanceRedOffset = -0.5;
//    layer.instanceBlueOffset = -0.5;
//    layer.instanceGreenOffset = -0.5;
    
    
}



@end
