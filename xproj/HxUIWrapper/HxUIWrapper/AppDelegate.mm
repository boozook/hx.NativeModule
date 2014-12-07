//
//  AppDelegate.mm
//  HxUIWrapper
//
//  Created by Alexander Kozlovskij on 28.11.14.
//  Thx for: Sergey "zzzzzzerg" Miryanov   &   Ivan "suhinini" Suhinin.
//

#import "AppDelegate.h"
#import "HxModule.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSLog(@"test: %d", ((int)HxModule_obj::test()));
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {}
@end
