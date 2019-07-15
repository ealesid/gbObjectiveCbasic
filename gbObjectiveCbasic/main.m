#import <Foundation/Foundation.h>


int isAlpha(char c) {
    NSString *str = [NSString stringWithFormat: @"%c", c];
    int ascii = [str characterAtIndex: 0];
    return isalpha(ascii);
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
        
    }
    return 0;
}
