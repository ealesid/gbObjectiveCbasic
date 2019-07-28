//
//  Student.h
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 28.07.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) int age;
@property (nonatomic, copy)  NSString *name;
@property (nonatomic, copy)  NSString *surname;
@property (nonatomic, copy)  NSString *fullName;

- (instancetype) init: (NSString *) name: (NSString *) surname: (int) age;

- (void) increaseAgeByYear;

@end

NS_ASSUME_NONNULL_END
