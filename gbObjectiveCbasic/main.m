#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        1st Task
        
        NSArray *stringsArray = @[
            @"1stString",
            @"2ndString",
            @"3rdString",
            @"lastString",
        ];
        
        for (NSString *string in stringsArray) {
            NSLog(string);
        }
        
    }
    return 0;
}
