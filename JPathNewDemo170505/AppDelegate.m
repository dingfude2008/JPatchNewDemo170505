//
//  AppDelegate.m
//  JPathNewDemo170505
//
//  Created by DFD on 2017/5/5.
//  Copyright © 2017年 DFD. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatchPlatform/JSPatch.h>

NSString *const JPatchAppKey = @"59d198781938295f";
NSString *const JPatchRSAPublicKey = @"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDSGge71bOb+nlTwUgiHMJN8Aki\nTOy+mBULlVi70jKkO20+PNUp1zlkzAPHkgqHeWH8jLGYVUPbhpcrTVad9eHhouik\nBDRvRNCgdS75wDimBQYUJj8fOneqE2d7oc5ODp1B8NS0O+TZK2kO+tm1gw8+/9xP\nsw4C7/YZka+gbilFeQIDAQAB\n-----END PUBLIC KEY-----";

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [JSPatch startWithAppKey:JPatchAppKey];
    [JSPatch setupRSAPublicKey:JPatchRSAPublicKey];
    [JSPatch sync];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
