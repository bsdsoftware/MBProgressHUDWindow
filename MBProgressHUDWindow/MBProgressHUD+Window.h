//
//  MBProgressHUD+Window.h
//  MBProgressHUDWindow
//
//  Created by Simone Fantini on 22/10/14.
//  Copyright (c) 2014 BSDSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD.h>

@interface MBProgressHUD (Window)

+ (MBProgressHUD *)showHUDInWindow;

+ (void)hideHUDInWindow;

@end