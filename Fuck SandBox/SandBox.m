//
//  SandBox.m
//  Fuck SandBox
//
//  Created by Nima Akbarzade on 3/4/20.
//  Copyright © 2020 Nima Akbarzade. All rights reserved.
//

#import "SandBox.h"
#include <objc/runtime.h>

@implementation SandBox

- (void) retrieveData {
    NSLog(@"Now you can see me");
    int i = 0;
    Class LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace");
    Class LSApplicationProxy = objc_getClass("LSApplicationProxy");
    
    NSObject *defaultWorkspace = [LSApplicationWorkspace performSelector:@selector(defaultWorkspace)];
    NSArray *allInstalledApplications = [defaultWorkspace performSelector:@selector(allInstalledApplications)];
//    NSLog(@"%@", allInstalledApplications);
    
    for (i = 0; i < allInstalledApplications.count; i++) {
            NSObject *app = allInstalledApplications[i];
            if ([app isKindOfClass:LSApplicationProxy]) {
                NSString* name = [app performSelector:NSSelectorFromString(@"localizedName")];
                NSString* bundle = [app performSelector:NSSelectorFromString(@"applicationIdentifier")];
                NSString * type = [app performSelector:NSSelectorFromString(@"applicationType")];
                NSString * shortVersionString = [app performSelector:NSSelectorFromString(@"shortVersionString")];
                NSLog(name);
        }
    }
}

@end
