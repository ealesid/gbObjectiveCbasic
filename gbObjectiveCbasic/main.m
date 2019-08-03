@import Foundation;

#import "Bird.h"
#import "Swarm.h"


int main(int argc, const char * argv[]) {
    
    Bird * blackBird = [[Bird alloc] initWithKind: @"blackBird"];
    Bird * blueBird = [[Bird alloc] initWithKind: @"blueBird"];
    Bird * redBird = [[Bird alloc] initWithKind: @"redBird"];
    
    Swarm * birdsSwarm = [[Swarm alloc] init];
    [birdsSwarm addBird: blackBird];
    [birdsSwarm addBird: blueBird];
    [birdsSwarm addBird: redBird];
    
    for (Bird *bird in birdsSwarm.birdsArray) { [bird fly]; }
    
    NSLog(@"Removing swarm...");
    [birdsSwarm remove];

    return 0;
}
