//
//  MLPAppDelegate.m
//  MLPSpotlightDemo
//
//  Created by Eddy Borja on 1/26/13.
//  Copyright (c) 2013 Mainloop. All rights reserved.
//

#import "MLPAppDelegate.h"
#import <QuartzCore/QuartzCore.h>
#import "MLPViewController.h"

@implementation MLPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[MLPViewController alloc] initWithNibName:@"MLPViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window setBackgroundColor:self.viewController.view.backgroundColor];
    [self.window.layer setCornerRadius:4];
    [self.window.layer setMasksToBounds:YES];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
