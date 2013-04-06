//
//  NSView+Fade.m
//  Paste
//
//  Created by Sam Gray on 2/17/13.
/* Copyright (c) 2013 Sam Gray
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "NSView+Fade.h"

@implementation NSView (Fade)

-(void)fadeOut {
    [[self animator] setAlphaValue:0.0];
}

-(void)fadeIn {
    [[self animator] setAlphaValue:1.0];
}

-(void)fadeOutWithDuration:(NSTimeInterval)duration completionBlock:(void (^)(void))completionBlock; {
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
        context.duration = (duration > 0)?duration:1.0;
        [self fadeOut];
    } completionHandler:completionBlock];
}

-(void)fadeInWithDuration:(NSTimeInterval)duration completionBlock:(void (^)(void))completionBlock; {
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
        context.duration = (duration > 0)?duration:1.0;
        [self fadeIn];
    } completionHandler:completionBlock];
}

@end
