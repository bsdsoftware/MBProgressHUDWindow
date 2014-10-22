//
//  MBProgressHUD+Window.m
//  MBProgressHUDWindow
//
//  Created by Simone Fantini on 22/10/14.
//  Copyright (c) 2014 BSDSoftware. All rights reserved.
//

#import "MBProgressHUD+Window.h"

@implementation MBProgressHUD (Window)

static UIWindow *hudWindow;

+ (MBProgressHUD *)showHUDInWindow {
	MBProgressHUD *hud;
	if (!hudWindow) {
		hudWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
		hud = [MBProgressHUD showHUDAddedTo:hudWindow animated:YES];
		[hudWindow makeKeyAndVisible];
	} else {
		hud = [MBProgressHUD HUDForView:hudWindow];
	}
	return hud;
}

+ (void)hideHUDInWindow {
	if (hudWindow) {
		[MBProgressHUD hideHUDForView:hudWindow animated:YES];
		hudWindow.hidden = YES;
		hudWindow = nil;
	}
}

@end