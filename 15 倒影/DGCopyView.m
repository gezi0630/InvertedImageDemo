//
//  DGCopyView.m
//  15 倒影
//
//  Created by MAC on 2017/9/5.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "DGCopyView.h"

@implementation DGCopyView

//设置控件主层的类型（注意一定要实现这个方法，否则会崩溃）

+(Class)layerClass
{
    return [CAReplicatorLayer class];
}

@end
