@interface NSUserDefaults (OLEDISOCRD)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
@end




static NSString *domain = @"com.tweaksdev22.olediscord";
static NSString *PostNotificationString = @"com.tweaksdev22.olediscordprefs";
static BOOL enabled;


//pref link


