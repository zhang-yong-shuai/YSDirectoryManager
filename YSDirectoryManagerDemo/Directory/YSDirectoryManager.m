//
//  YSDirectoryManager.m
//  YSDirectoryManagerDemo
//
//  Created by ZhangYongShuai on 16/8/25.
//  Copyright © 2016年 XinYiChangXiang. All rights reserved.
//

#import "YSDirectoryManager.h"

@implementation YSDirectoryManager
#pragma mark - common directory operation
+ (NSString *)documentsPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return paths[0];
}

+ (NSString *)tempPath {
    return NSTemporaryDirectory ();
}

+ (BOOL)createDirectory:(NSString *)directory {
    NSFileManager *fm = [NSFileManager defaultManager];
    // if directory not exist, then create
    if (![fm fileExistsAtPath:directory]) {
        return [fm createDirectoryAtPath:directory withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return YES;
}

+ (BOOL)removeDirectory:(NSString *)directory {
    NSFileManager *fm = [NSFileManager defaultManager];
    if ([fm fileExistsAtPath:directory]) {
        return [fm removeItemAtPath:directory error:nil];
    }
    return YES;
}

+ (unsigned long long)sizeAtPath:(NSString *)path {
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isDir = YES;
    if (![fm fileExistsAtPath:path isDirectory:&isDir]) {
        return 0;
    };
    unsigned long long fileSize = 0;
    // directory
    if (isDir) {
        NSDirectoryEnumerator *enumerator = [fm enumeratorAtPath:path];
        while (enumerator.nextObject) {
            fileSize += enumerator.fileAttributes.fileSize;
        }
    } else {
        // file
        fileSize = [fm attributesOfItemAtPath:path error:nil].fileSize;
    }
    return fileSize;
}

@end
