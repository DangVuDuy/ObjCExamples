//
//  DemoFunction.m
//  ObjCExamples
//
//  Created by Đặng Vũ Duy on 12/2/15.
//  Copyright © 2015 Đặng Vũ Duy. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"Demo Function"];
    [self writeln:@"Hello World"];
    [self SayFirstname:@"Steve" andLastname:@"Job"];
    float tempTemDegree = 30.1;
    NSString* result = [NSString stringWithFormat:@"%2.1f degree equal to %3.1f F",tempTemDegree, [self celiusToToFahrenheit:tempTemDegree]];
    [self writeln:result];
    [self celiusToFahrenheit];
    [self performSelector:@selector(celiusToFahrenheit)];
    //@(30.1) == [NSNumber alloc] init
    [self performSelector:@selector(celiusTOFahrenheit2:) withObject:@(30.1)];
    
}
- (void) SayFirstname: (NSString*) firstName andLastname : (NSString*) LastName {
    NSLog(@"%@ %@", firstName,LastName);
    
}
- (float) celiusToToFahrenheit: (float) degree {
    return degree * 1.8 +32.0;

}
- (void) celiusToFahrenheit {
    NSLog(@"DO NOT THING");
    //Co the trung ten ham nhung khong dc cung kieu tra ve
}
- (float) celiusToFahrenheit2 {
    return 10.1;
}

- (void) celiusTOFahrenheit2: (NSNumber*) degree {
    float result = [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f",result);
}

@end
