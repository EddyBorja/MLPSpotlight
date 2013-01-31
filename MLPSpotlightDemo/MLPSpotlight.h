//
//  MLPSpotlight.h
//  
//
//  Created by Eddy Borja on 1/26/13.
//  Copyright (c) 2013 Mainloop LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLPSpotlight : UIView

@property (assign) CGPoint spotlightCenter;
@property (nonatomic) CGGradientRef spotlightGradientRef;
@property (assign) float spotlightStartRadius;
@property (assign) float spotlightEndRadius;

+ (void)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint;

+ (void)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint withDuration:(CGFloat)duration;

+ (NSArray *)spotlightsInView:(UIView *)view;

+ (void)removeSpotlightsInView:(UIView *)view;

+ (id)spotlightWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint;

- (id)initWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint;

@end
