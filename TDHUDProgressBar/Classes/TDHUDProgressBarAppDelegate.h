//
//  TDHUDProgressBarAppDelegate.h
//  TDHUDProgressBar
//
//  Created by Tim Davies on 05/02/2010.
//  Copyright YummyCocoa 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDHUDProgressBar.h"

@interface TDHUDProgressBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	IBOutlet UISlider *slider;
	IBOutlet TDHUDProgressBar *bar;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction) changeValue:(id)sender;
- (IBAction) jumpProgress;

@end

