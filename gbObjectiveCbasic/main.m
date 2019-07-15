#import <Foundation/Foundation.h>


int isAlpha(char c) {
    NSString *str = [NSString stringWithFormat: @"%c", c];
    int ascii = [str characterAtIndex: 0];
    return isalpha(ascii);
}


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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //  1st Task

        char *input;

        printf("Character?: ");
        scanf("%c", &input);

        if (isAlpha(input) > 0) {
            NSLog(@"Character '%c' is a letter.", input);
        } else {
            NSLog(@"Character '%c' is not a letter.", input);
        }

        
        //  2nd Task
        
        int a  = calculate(@"+", 2, 3);
        int b  = calculate(@"-", 3, 2);
        int c  = calculate(@"*", 4, 5);
        int d  = calculate(@"/", 10, 2);
        
        NSLog(@"Result: \n a = %i, \n b = %i, \n c = %i, \n d = %i", a, b, c, d);
        
    }
    return 0;
}
