//
//  Swarm.h
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 03.08.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

@import Foundation;

@class Bird;

NS_ASSUME_NONNULL_BEGIN

@interface Swarm : NSObject

@property (nonatomic, strong) NSMutableArray<Bird *> * birdsArray;

//- (instancetype) init;

- (void) addBird: (Bird *) bird;

- (void) remove;

@end

NS_ASSUME_NONNULL_END
