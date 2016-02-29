//
//  AppAppearance.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "AppAppearance.h"

@implementation AppAppearance

/**
 *  Changes the style of the UINavigationBar
 *
 *  @param navigationBar Navigation bar to change style
 */
+ (void)setNavigationBarApperanceTo:(UINavigationBar *)navigationBar {
    navigationBar.barTintColor = [UIColor mailAppBlackColor];
    [navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}

@end
