//
//  CustomView.m
//  FadeViewExample
//
//  Created by Sam Gray on 4/6/13.
//  Copyright (c) 2013 Sam Gray. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect; {
    [[NSColor blackColor] setFill];
    NSRectFill(dirtyRect);
}

@end
