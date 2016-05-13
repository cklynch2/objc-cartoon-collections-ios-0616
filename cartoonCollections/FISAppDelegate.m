//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
    
//    NSArray *dwarfs = @[@"Grumpy", @"Dopey", @"Sleepy"];
//    NSString *dwarfRollCall = [stringByRollCallingDwarfsInArray:dwarfs];
//    NSLog(@"%@", dwarfRollCall);

}


-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs
{
    NSMutableString *dwarfRollCall = [[NSMutableString alloc]init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSString *dwarfName = dwarfs[i];
        NSInteger dwarfNumber = i + 1;
        if (i < [dwarfs count] - 1) {
            [dwarfRollCall appendFormat:@"%li. %@ | ", dwarfNumber, dwarfName];
        }
        else {
            [dwarfRollCall appendFormat:@"%li. %@", dwarfNumber, dwarfName];
        }
    }
    return dwarfRollCall;
}


-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers
{
    NSMutableArray *planeteerShouts = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *powerWhisper = powers[i];
        NSString *powerShout = [[powerWhisper uppercaseString] stringByAppendingString:@"!"];
        [planeteerShouts addObject:powerShout];
    }
    return planeteerShouts;
}


-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
    NSMutableString *summonCaptainPlanet = [@"Let our powers combine:" mutableCopy];
    NSArray *planeteerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [planeteerShouts count]; i++) {
        NSString *powerShout = planeteerShouts[i];
        [summonCaptainPlanet appendFormat:@"\n%@", powerShout];
    }
    [summonCaptainPlanet appendFormat:@"\nGo Planet!"];
    return summonCaptainPlanet;
}


-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
    NSMutableString *premiumCheeseInStock = [[NSMutableString alloc]init];
    
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        NSString *cheeseInStock = cheesesInStock[i];
        if ([premiumCheeseNames containsObject:cheeseInStock]) {
            [premiumCheeseInStock appendString:cheeseInStock];
        }
    }
    if ([premiumCheeseInStock isEqual:@""]) {
            [premiumCheeseInStock appendString:@"No premium cheeses in stock."];
        }
    return premiumCheeseInStock;
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
    NSMutableArray *dollarAmounts = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *moneyBag = moneyBags[i];
        NSString *dollarAmount = [NSString stringWithFormat:@"$%li", [moneyBag length]];
        [dollarAmounts addObject:dollarAmount];
    }
    return dollarAmounts;
}

@end
