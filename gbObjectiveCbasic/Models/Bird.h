//
//  Bird.h
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 03.08.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (instancetype) initWithKind: (NSString *) kind;

- (void) fly;

@property (nonatomic, strong) NSString * kind;

@end

NS_ASSUME_NONNULL_END
