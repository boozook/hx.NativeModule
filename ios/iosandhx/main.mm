//
//  main.m
//  iosandhx
//
//  Created by Alexander Kozlovskij on 26.03.17.
//  Copyright © 2017 FZZR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <hxcpp.h>

int main(int argc, char * argv[])
{
	HX_TOP_OF_STACK hx::Boot(); __boot_all();
	
	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}
