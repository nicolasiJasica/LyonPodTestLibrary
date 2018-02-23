//
//  NSString+SpeakToMe.m
//  Pods
//
//  Created by weiliang on 16/12/27.
//
//

#import "NSString+SpeakToMe.h"
#import <staticFramework/staticFramework.h>
@implementation NSString (SpeakToMe)

-(void)SpeakToMe
{
    NSLog(@"\n 你好");
}

- (void)staticMethod;{
    StaticClass* a = [StaticClass new];
    [a staticMothed];
}
@end
