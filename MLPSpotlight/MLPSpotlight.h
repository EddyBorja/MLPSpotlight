/*
//  MLPSpotlight.h
//  
//
//  Created by Eddy Borja on 1/26/13.
//  Copyright (c) 2013 Mainloop LLC. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#import <UIKit/UIKit.h>

@interface MLPSpotlight : UIView

@property (assign) NSTimeInterval animationDuration;
@property (assign) CGPoint spotlightCenter;
@property (nonatomic) CGGradientRef spotlightGradientRef;
@property (assign) float spotlightStartRadius;
@property (assign) float spotlightEndRadius;

+ (instancetype)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint;

+ (instancetype)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint withDuration:(NSTimeInterval)duration;

+ (NSArray *)spotlightsInView:(UIView *)view;

+ (void)removeSpotlightsInView:(UIView *)view;

+ (instancetype)spotlightWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint;

- (id)initWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint;

@end
