#import <Foundation/Foundation.h>


// for 2nd task
int add(int firstNumber, int secondNumber) {
    return firstNumber + secondNumber;
}

int substruct(int firstNumber, int secondNumber) {
    return firstNumber - secondNumber;
}

int multiply(int firstNumber, int secondNumber) {
    return firstNumber * secondNumber;
}

int divide(int firstNumber, int secondNumber) {
    return firstNumber / secondNumber;
}


int calculate(NSString *operation, int firstNumber, int secondNumber) {
    NSArray *operations = @[@"+", @"-", @"*", @"/"];
    int operationIndex = [operations indexOfObject: operation];
    
    switch (operationIndex) {
        case 0:
            return add(firstNumber, secondNumber);
        case 1:
            return substruct(firstNumber, secondNumber);
        case 2:
            return multiply(firstNumber, secondNumber);
        case 3:
            return divide(firstNumber, secondNumber);
            
        default:
            NSLog(@"Operation not allowed!");
            return 0;
    }
}


// for 3rd task
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
        
        //      2nd Task
        printf("\n\t** 2nd Task **\n");
        
        int a  = calculate(@"+", 2, 3);
        int b  = calculate(@"-", 3, 2);
        int c  = calculate(@"*", 4, 5);
        int d  = calculate(@"/", 10, 2);
        
        NSLog(@"Result: \n a = %i, \n b = %i, \n c = %i, \n d = %i", a, b, c, d);
        
        
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
