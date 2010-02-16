//
//  TDHUDProgressBar.h
//  TDHUDProgressBar
//
//  Created by Tim Davies on 05/02/2010.
//  Copyright 2010 YummyCocoa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TDHUDProgressBar : UIView {
	float progress;
	CALayer *_progressFillLayer;
	CALayer *_borderLayer;
	CALayer *_progressLayer;
}

@property float progress;

- (void) setProgress:(float)f animated:(BOOL)b;

@end
