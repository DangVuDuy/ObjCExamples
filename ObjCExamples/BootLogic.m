//
//  BootLogic.m
//  TechmasterApp
//
//  Created by Dang Vu Duy on 2//14.
//  Copyright (c) 2015 Family. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
                                    @{TITLE: @"Function", CLASS: @"DemoFunction"},
                                    @{TITLE: @"Selector", CLASS: @"DemoSelector"}
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Intermediate", MENU: @[
                                    @{TITLE: @"Array", CLASS: @"InterB"},
                                    @{TITLE: @"Dictionary", CLASS: @"InterB"}
                                                        ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"Ojective -C by Example";
    mainScreen.about = @"This Demo Objective - C ";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
