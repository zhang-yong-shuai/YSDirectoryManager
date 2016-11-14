//
//  YSDirectoryManager.h
//  YSDirectoryManagerDemo
//
//  Created by ZhangYongShuai on 16/8/25.
//  Copyright © 2016年 XinYiChangXiang. All rights reserved.
//

/**
 *  Directory Manager
 */

#import <Foundation/Foundation.h>

@interface YSDirectoryManager : NSObject

#pragma mark - common directory operation
/// get documents directory
+ (NSString *)documentsPath;

/// get temp directory
+ (NSString *)tempPath;

/// create directory
+ (BOOL)createDirectory:(NSString *)directory;

/// remove directory
+ (BOOL)removeDirectory:(NSString *)directory;

/// get file or directory's size(unit: B)
+ (unsigned long long)sizeAtPath:(NSString *)path;

@end
