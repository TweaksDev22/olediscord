#import <Foundation/Foundation.h>
#import "XXXRootListController.h"



@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}



	return _specifiers;



}



//---

-(void)my_site {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://tweaksdev22.github.io"]
options:@{}
completionHandler:nil];
}

-(void)reddit {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.reddit.com/r/TweaksDev22/"]
options:@{}
completionHandler:nil];
}
-(void)sendEmail{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:tweaksdev22@gmail.com"]
options:@{}
completionHandler:nil];
}
@end


