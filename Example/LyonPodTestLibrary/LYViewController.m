//
//  LYViewController.m
//  LyonPodTestLibrary
//
//  Created by weiliang on 12/27/2016.
//  Copyright (c) 2016 weiliang. All rights reserved.
//

#import "LYViewController.h"
#import <dynamicFramework/Person.h>
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
@interface LYViewController ()

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSString *documentsPath = [NSString stringWithFormat:@"%@/Documents/dynamicFramework.framework",NSHomeDirectory()];
    [self bundleLoadDylibWithPath:documentsPath];
    
    
    [self.button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    NSString *documentsPath2 = [NSString stringWithFormat:@"%@/Documents/dynamicFramework.framework/dynamicFramework",NSHomeDirectory()];
    [self dlopenLoadDylibWithPath:documentsPath2];
 
}
- (void)dlopenLoadDylibWithPath:(NSString *)path
{
    void * libHandle = NULL;
    libHandle = dlopen([path cStringUsingEncoding:NSUTF8StringEncoding], RTLD_NOW);
    if (libHandle == NULL) {
        char *error = dlerror();
        NSLog(@"dlopen error: %s", error);
    } else {
        NSLog(@"dlopen load framework success.");
    }
}

- (void)buttonClick{
    Class rootClass = NSClassFromString(@"Person");
    if (rootClass) {
        id object = [[rootClass alloc] init];
        [(Person *)object run];
    }
}
- (void)bundleLoadDylibWithPath:(NSString *)path
{
    NSError *err = nil;
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    if ([bundle loadAndReturnError:&err]) {
        NSLog(@"bundle load framework success.");
    } else {
        NSLog(@"bundle load framework err:%@",err);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
