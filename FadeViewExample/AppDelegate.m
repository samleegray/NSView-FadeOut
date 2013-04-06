//
//  AppDelegate.m
//  FadeViewExample
//
//  Created by Sam Gray on 4/6/13.
//  Copyright (c) 2013 Sam Gray. All rights reserved.
//

#import "AppDelegate.h"
#import "NSView+Fade.h"

@interface AppDelegate ()
@property(weak)IBOutlet NSView *viewToFade;
@property(weak)IBOutlet NSTextField *label;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.label.stringValue = @"Hi, I'm a view that is fading in.";
    [self.viewToFade fadeInWithDuration:5.0 completionBlock:^{
        self.label.stringValue = @"Now I'm fading back out.";
        [self.viewToFade fadeOutWithDuration:5.0 completionBlock:^{
        }];
    }];
}

@end
