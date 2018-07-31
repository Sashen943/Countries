//
//  AppDelegate.m
//  Countries
//
//  Created by Sashen Pillay on 2018/07/29.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "AppDelegate.h"
#import "CountriesViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = UIWindow.new;
    [self.window makeKeyAndVisible];
    self.window.rootViewController  = [[UINavigationController alloc]
                                       initWithRootViewController: ViewController.new];
    return YES;
}

@end
