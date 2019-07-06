#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        1st and 2nd Tasks
        
        printf("\n\t 1st & 2nd Tasks \n");
        
        double firstNumber = 0.0;
        double secondNumber = 0.0;
        
        printf("1st number?: ");
        scanf("%lf", &firstNumber);
        printf("2nd number?: ");
        scanf("%lf", &secondNumber);
        
        NSLog(@"Summ of %.2lf and %.2lf is %.2lf", firstNumber, secondNumber, firstNumber + secondNumber);
        NSLog(@"Diff of %.2lf and %.2lf is %.2lf", firstNumber, secondNumber, firstNumber - secondNumber);
        NSLog(@"Mulltiply of %.2lf and %.2lf is %.2lf", firstNumber, secondNumber, firstNumber * secondNumber);
        NSLog(@"Division of %.2lf and %.2lf is %.2lf", firstNumber, secondNumber, firstNumber / secondNumber);
        
        //        3rd Task
        
        printf("\n\t 3rd Task \n");
        
        double firstNum;
        double secondNum;
        double thirdNum;
        
        printf("1st number?: ");
        scanf("%lf", &firstNum);
        printf("2nd number?: ");
        scanf("%lf", &secondNum);
        printf("3rd number?: ");
        scanf("%lf", &thirdNum);
        
        NSLog(
              @"Average of %.2lf, %.2lf, %.2lf is %.2lf",
              firstNum, secondNum, thirdNum, (firstNum + secondNum + thirdNum) / 3
              );
    }
    return 0;
}
