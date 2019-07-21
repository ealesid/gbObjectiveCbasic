#import <Foundation/Foundation.h>


typedef enum Gender {
    Male,
    Female,
};


NSString *genderToString(enum Gender gender) {
    switch (gender) {
        case 0:
            return @"Male";
        case 1:
            return @"Female";
        default:
            return @"Other";
    }
};


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        1st Task
        printf("\n\t** 1st Task **\n");
        
        NSArray *stringsArray = @[
            @"1stString",
            @"2ndString",
            @"3rdString",
            @"lastString",
        ];
        
        for (NSString *string in stringsArray) {
            NSLog(@"%@", string);
        }
        
        //      3rd Task
        printf("\n\t** 3rd Task **\n");

        typedef struct Human {
            NSString *name;
            NSInteger age;
            enum Gender gender;
        };
        
        struct Human firstHuman = { @"FirstHuman", 24, Male};
        struct Human secondHuman = { @"SecondHuman", 27, Male};
        struct Human thirdHuman = { @"ThirdHuman", 25, Female};
        struct Human oneMoreHuman = { @"OneMoreHuman", 29, Male};
        
        NSLog(@"%@: %@, %li", firstHuman.name, genderToString(firstHuman.gender), firstHuman.age);
        NSLog(@"%@: %@, %li", secondHuman.name, genderToString(secondHuman.gender), secondHuman.age);
        NSLog(@"%@: %@, %li", thirdHuman.name, genderToString(thirdHuman.gender), thirdHuman.age);
        NSLog(@"%@: %@, %li", oneMoreHuman.name, genderToString(oneMoreHuman.gender), oneMoreHuman.age);

    }
    return 0;
}
