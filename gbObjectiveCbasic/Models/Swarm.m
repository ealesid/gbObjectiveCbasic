//
//  Swarm.m
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 03.08.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

#import "Swarm.h"
#import "Bird.h"

@implementation Swarm

- (instancetype) init {
    self = [super init];
    if (self) { _birdsArray = [[NSMutableArray alloc] init]; }
    NSLog(@"Swarm init. Birds in swarm: %lu", (unsigned long)_birdsArray.count);
    return self;
}

- (void) addBird: (Bird *) bird {
    [_birdsArray addObject: bird];
    NSLog(@"Bird '%@' added to swarm. Birds in swarm: %lu", bird.kind, (unsigned long) _birdsArray.count);
}

- (void) remove {
    [_birdsArray removeAllObjects];
    
    NSLog(@"Swarm removed. Birds in swarm: %lu", (unsigned long)_birdsArray.count);

//    [super dealloc];
    
}

@end
