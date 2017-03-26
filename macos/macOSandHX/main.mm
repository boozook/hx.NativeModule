//
//  main.m
//  macOSandHX
//
//  Created by Alexander Kozlovskij on 26.03.17.
//  Copyright © 2017 FZZR. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HxcppConfig.h"
#import "Foo.h"
#import "Bar.h"

int main(int argc, const char * argv[]) {
	HX_TOP_OF_STACK hx::Boot(); __boot_all();
	fzzr::example::Foo_obj::test();
	
	return NSApplicationMain(argc, argv);
}
