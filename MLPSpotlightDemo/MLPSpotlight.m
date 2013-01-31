//
//  MLPSpotlight.m
//  
//
//  Created by Eddy Borja on 1/26/13.
//  Copyright (c) 2013 Mainloop LLC. All rights reserved.
//

#import "MLPSpotlight.h"



@implementation MLPSpotlight

#pragma mark - Static Methods

+ (id)spotlightWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint
{
    MLPSpotlight *newSpotlight = [[MLPSpotlight alloc] initWithFrame:frame
                                                withSpotlightAtPoint:centerPoint];
    return newSpotlight;
}


+ (void)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint
{
    [[self class] addSpotlightInView:view atPoint:centerPoint withDuration:0.1];
}

+ (void)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint withDuration:(CGFloat)duration
{
    MLPSpotlight *newSpotlight = [[self class] spotlightWithFrame:view.frame
                                             withSpotlightAtPoint:centerPoint];
    
    [view addSubview:newSpotlight];
    
    [newSpotlight setAlpha:0];
    [UIView animateWithDuration:0.1
                          delay:0
                        options:UIViewAnimationCurveEaseOut|
                            UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         [newSpotlight setAlpha:1];
                     }
                     completion:nil];
}


+ (NSArray *)spotlightsInView:(UIView *)view
{
    NSMutableArray *spotlights = [NSMutableArray array];
    for(UIView *subview in view.subviews){
        if([subview isKindOfClass:[self class]]){
            [spotlights addObject:subview];
        }
    }
    
    return [NSArray arrayWithArray:spotlights];
}

+ (void)removeSpotlightsInView:(UIView *)view
{
    NSArray *spotlightsInView = [[self class] spotlightsInView:view];
    for(MLPSpotlight *spotlight in spotlightsInView){
        if([spotlight isKindOfClass:[self class]]){
            [UIView animateWithDuration:0.1
                                  delay:0
                                options:UIViewAnimationCurveEaseOut|UIViewAnimationOptionBeginFromCurrentState
                             animations:^{
                                 [spotlight setAlpha:0];
                             }
                             completion:^(BOOL finished){
                                 [spotlight removeFromSuperview];
                             }];
        }
    }
}

- (void)setSpotlightGradientRef:(CGGradientRef)newSpotlightGradientRef
{
    CGGradientRelease(_spotlightGradientRef);
    _spotlightGradientRef = nil;
    
    _spotlightGradientRef = newSpotlightGradientRef;
    CGGradientRetain(_spotlightGradientRef);
}

#pragma mark - Init

- (id)initWithFrame:(CGRect)frame withSpotlightAtPoint:(CGPoint)centerPoint
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setUserInteractionEnabled:NO];
        [self setSpotlightCenter:centerPoint];
        [self setBackgroundColor:[UIColor clearColor]];
        
        CGGradientRef defaultGradientRef = [[self class] newSpotlightGradient];
        [self setSpotlightGradientRef:defaultGradientRef];
        CGGradientRelease(defaultGradientRef);
        
        [self setSpotlightStartRadius:0];
        [self setSpotlightEndRadius:350];
        
    }
    return self;
}



#pragma mark - Drawing Override
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGGradientRef gradient = self.spotlightGradientRef;
    
    float radius = self.spotlightEndRadius;
    float startRadius = self.spotlightStartRadius;
    CGContextDrawRadialGradient (context, gradient, self.spotlightCenter, startRadius, self.spotlightCenter, radius, kCGGradientDrawsAfterEndLocation);
}

#pragma mark - Factory Method

+ (CGGradientRef)newSpotlightGradient
{
    size_t locationsCount = 2;
    CGFloat locations[2] = {0.0f, 1.0f,};
    CGFloat colors[12] = {0.0f,0.0f,0.0f,0.0f,
                            0.0f,0.0f,0.0f,0.70f};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, locationsCount);
    CGColorSpaceRelease(colorSpace);
    
    return gradient;
}

#pragma mark - Deallocation

- (void)dealloc
{
    [self setSpotlightGradientRef:nil];
    
}

@end
