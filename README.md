# NSView+Fade
Released under the MIT license. Find the gory details of that in the LICENSE file.

Copyright (c) 2013, Sam Gray.

### How to Use

Simply include `NSView+Fade.h` and `NSView+Fade.m` in your project. Then import `NSView+Fade.h` wherever you want to fade in or out a view. Doing so will allow you to use four new methods on any `NSView` or subclass of it. These methods are:

	-(void)fadeOut;
	-(void)fadeIn;

	-(void)fadeOutWithDuration:(NSTimeInterval)duration completionBlock:(void (^)(void))completionBlock;
	-(void)fadeInWithDuration:(NSTimeInterval)duration completionBlock:(void (^)(void))completionBlock;
	
Calling `fadeOut` or `fadeIn` will start the appropriate animation and then return instantly. Calling one of the other methods with a duration greater than 0 will start the appropriate animation with the specified duration. Once the animation is finished the completionBlock will be called. If you pass a duration that is less than 0 then it'll default to using 1.0 as the duration for the animation.

### Example

An example can be found in `AppDelegate.m` as follows:

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
	
This causes the label to show "Hi, I'm a view that is fading in." while it fades in. Once the fade in animation is done, it calls the completionBlock we passed which in turn changes the label to "Now I'm fading back out." and starts a new fade out animation. Each animation has a duration of 5.0 seconds which means it takes each animation five seconds to fade in/out completely, and thus 5 seconds before the completionBlock is called.

### Notes

This category uses `NSView's animator` proxy method, and changes the view's alpha value to do the fade in/out animation.