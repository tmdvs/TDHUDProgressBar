//
//  TDHUDProgressBar.m
//  TDHUDProgressBar
//
//  Created by Tim Davies on 05/02/2010.
//  Copyright 2010 YummyCocoa. All rights reserved.
//

#import "TDHUDProgressBar.h"


@implementation TDHUDProgressBar

@synthesize progress;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}

- (void) drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	printf("<< TDHUDProgressBar >> drawing the progress bar objects");
	
	// Drawing clear background
	[[UIColor clearColor] set];
	UIRectFill(rect);
	
	//Create containing layer for progress bar
	_progressLayer = [CALayer layer];
	[_progressLayer setFrame:rect];
	[self.layer addSublayer:_progressLayer];
	
	//Create border layer
	_borderLayer = [CALayer layer];
	[_progressLayer addSublayer:_borderLayer];
	
	//Draw border
	CGRect borderFrame = CGRectMake(0, 0, (_progressLayer.frame.size.width), (_progressLayer.frame.size.height));
	[_borderLayer setBackgroundColor:[[UIColor clearColor] CGColor]];
	[_borderLayer setFrame:borderFrame];
	[_borderLayer setCornerRadius:(_progressLayer.frame.size.height / 2)];
	[_borderLayer setBorderWidth:3.00];
	[_borderLayer setBorderColor:[[UIColor whiteColor] CGColor]];
	[_progressLayer addSublayer:_borderLayer];
	
	//Create progress fill layer
	_progressFillLayer = [CALayer layer];
	[_progressFillLayer setBackgroundColor:[[UIColor whiteColor] CGColor]];
	[_progressLayer addSublayer:_progressFillLayer];
	
	[self layoutSubviews];
}

- (void)layoutSubviews {
	
	CGRect rect = CGRectInset(_progressLayer.frame, 6, 6);
	//Draw progress fill layer based on progress
	CGRect progressFrame = CGRectMake(rect.origin.x, rect.origin.y, (rect.size.width * progress), rect.size.height);
	[_progressFillLayer setFrame:progressFrame];
	[_progressFillLayer setCornerRadius:((progressFrame.size.height / 2))];
	
}

- (void) setProgress:(float)p
{
	progress = p;
	[_progressFillLayer setSpeed:1.2];
	[self layoutSubviews];
}

- (void) setProgress:(float)f animated:(BOOL)b
{
	if(b)
	{
		[_progressFillLayer setSpeed:1.2];
		progress = f;
	}
	else
	{
		[_progressFillLayer setSpeed:10.0];
		progress = f;
	}
}

- (void)dealloc {
    [super dealloc];
	[_progressLayer removeAllAnimations];
	[_progressLayer removeFromSuperlayer];
}


@end
