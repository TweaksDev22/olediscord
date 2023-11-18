#import <UIKit/UIKit.h>
#import "Tweak.h"
#import <Foundation/Foundation.h>
#import <roothide.h>
#import <SpringBoard/SpringBoard.h>

%config(warnings=default)

%group discord



%hook RCTView
-(void) setBackgroundColor:(id)arg1 {
arg1 = [UIColor colorWithRed:175/255.0 green:79/255.0 blue:52/255.0 alpha:1];

return %orig;


}
%end

%hook DCDMessageViewController

-(void) setBackgroundColor:(id)arg1 {
arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1];

return %orig;

}
%end

%hook discord_ios_discord_ios_swift_lib.DCDTableView


-(void) setBackgroundColor:(id)arg1 {
arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1];
return %orig;


}
%end


%end //Don't forget your second end.

static void notificationCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
	NSNumber *enabledValue = (NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled" inDomain:domain];
	enabled = (enabledValue) ? [enabledValue boolValue] : NO;
}

%ctor {
	notificationCallback(NULL, NULL, NULL, NULL, NULL);
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, notificationCallback, (CFStringRef)PostNotificationString, NULL, CFNotificationSuspensionBehaviorCoalesce);
	if (enabled) {
		%init(discord);
	}
}
