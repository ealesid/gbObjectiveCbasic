//
//  Student.m
//  gbObjectiveCbasic
//
//  Created by Aleksey Sidorov on 28.07.2019.
//  Copyright © 2019 Aleksey Sidorov. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype) init: (NSString *) name: (NSString *) surname: (int) age {
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _age = age;
    }
    return self;
}

- (NSString *) fullName {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (void)increaseAgeByYear {
    _age += 1;
}

- (NSString *) description {
    return [NSString stringWithFormat:@"Name: %@, Surname: %@, FullName: %@, Age: %i", self.name, self.surname, self.fullName, self.age];
}

@end
