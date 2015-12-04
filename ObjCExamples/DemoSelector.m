//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by Duy Dang on 12/4/15.
//  Copyright © 2015 Đặng Vũ Duy. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(hideslider) withObject:nil afterDelay:2];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple": @"táo", @"lemon": @"chanh",@"tomato":@"ca chua"} waitUntilDone:true];//dua bien vao performSelector
}


- (IBAction)crunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    [self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false];
}
- (void) doCrunchData{
    [NSThread sleepForTimeInterval:5];
}

- (void) hideslider{
    self.slider.hidden = true;
}
- (void) processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

@end
