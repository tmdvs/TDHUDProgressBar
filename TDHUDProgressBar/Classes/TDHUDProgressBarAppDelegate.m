//
//  TDHUDProgressBarAppDelegate.m
//  TDHUDProgressBar
//
//  Created by Tim Davies on 05/02/2010.
//  Copyright YummyCocoa 2010. All rights reserved.
//

#import "TDHUDProgressBarAppDelegate.h"

@implementation TDHUDProgressBarAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}

- (IBAction) changeValue:(id)sender
{
	bar.progress = slider.value;
}

- (IBAction) jumpProgress
{
	bar.progress = 0.8;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
