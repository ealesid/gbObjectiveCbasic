#import <Foundation/Foundation.h>

#import "Student/Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *student1 = [[Student alloc] init: @"1st":@"Student":19];
        Student *student2 = [[Student alloc] init: @"2nd":@"Student":21];
        Student *student3 = [[Student alloc] init: @"3rd":@"Student":22];
        
        NSArray *students = [NSArray arrayWithObjects: student1, student2, student3, nil];
        
        for (Student *student in students) {
            NSLog(@"%@", student);
        };

        printf("\n**\t Increase age\n");
        [student1 increaseAgeByYear];
        NSLog(@"%@", student1);
    }
    return 0;
}
