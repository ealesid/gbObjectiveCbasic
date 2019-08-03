//
//  Bird.m
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 03.08.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initWithKind: (NSString *) kind {
    self = [super init];
    if (self) { _kind = kind; }
    return self;
}

- (void) fly {
    NSLog(@"Bird %@ flying...", _kind);
}

- (void) dealloc {
    NSLog(@"Bird %@ dealloc.", _kind);
//    [super dealloc];
}

@end
