//
//  ViewController.m
//  MBProgressHUDWindow
//
//  Created by Simone Fantini on 22/10/14.
//  Copyright (c) 2014 BSDSoftware. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+Window.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)mostraHUDTap:(id)sender {
	[MBProgressHUD showHUDInWindow];
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		[MBProgressHUD hideHUDInWindow];
	});
}

- (IBAction)btn1Tap:(id)sender {
	[[[UIAlertView alloc] initWithTitle:@"Foo" message:@"Bar" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
}

@end
