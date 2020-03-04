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

- (NSArray *) appsName {
    NSMutableArray *nameArray = [NSMutableArray array];
    Class LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace");
    Class LSApplicationProxy = objc_getClass("LSApplicationProxy");
    
    NSObject *defaultWorkspace = [LSApplicationWorkspace performSelector:@selector(defaultWorkspace)];
    NSArray *allInstalledApplications = [defaultWorkspace performSelector:@selector(allInstalledApplications)];
    
    for (int i = 0; i < allInstalledApplications.count; i++) {
            NSObject *app = allInstalledApplications[i];
            if ([app isKindOfClass:LSApplicationProxy]) {
                NSString* name = [app performSelector:NSSelectorFromString(@"localizedName")];
                [nameArray addObject:name];

        }
    }
    return nameArray;
}

- (NSArray *) appsBundle {
    NSMutableArray *bundleArray = [NSMutableArray array];
    Class LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace");
    Class LSApplicationProxy = objc_getClass("LSApplicationProxy");
    
    NSObject *defaultWorkspace = [LSApplicationWorkspace performSelector:@selector(defaultWorkspace)];
    NSArray *allInstalledApplications = [defaultWorkspace performSelector:@selector(allInstalledApplications)];
    
    for (int i = 0; i < allInstalledApplications.count; i++) {
            NSObject *app = allInstalledApplications[i];
            if ([app isKindOfClass:LSApplicationProxy]) {
                NSString* bundle = [app performSelector:NSSelectorFromString(@"applicationIdentifier")];
                [bundleArray addObject:bundle];

        }
    }
    return bundleArray;
}

- (NSArray *) appsType {
    NSMutableArray *typeArray = [NSMutableArray array];
    Class LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace");
    Class LSApplicationProxy = objc_getClass("LSApplicationProxy");
    
    NSObject *defaultWorkspace = [LSApplicationWorkspace performSelector:@selector(defaultWorkspace)];
    NSArray *allInstalledApplications = [defaultWorkspace performSelector:@selector(allInstalledApplications)];
    
    for (int i = 0; i < allInstalledApplications.count; i++) {
            NSObject *app = allInstalledApplications[i];
            if ([app isKindOfClass:LSApplicationProxy]) {
                NSString * type = [app performSelector:NSSelectorFromString(@"applicationType")];
                [typeArray addObject:type];

        }
    }
    return typeArray;
}


- (NSArray *) appsVersions {
    NSMutableArray *versionArray = [NSMutableArray array];
    Class LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace");
    Class LSApplicationProxy = objc_getClass("LSApplicationProxy");
    
    NSObject *defaultWorkspace = [LSApplicationWorkspace performSelector:@selector(defaultWorkspace)];
    NSArray *allInstalledApplications = [defaultWorkspace performSelector:@selector(allInstalledApplications)];
    
    for (int i = 0; i < allInstalledApplications.count; i++) {
            NSObject *app = allInstalledApplications[i];
            if ([app isKindOfClass:LSApplicationProxy]) {
                NSString * shortVersionString = [app performSelector:NSSelectorFromString(@"shortVersionString")];
                [versionArray addObject:shortVersionString];

        }
    }
    return versionArray;
}

@end
