# YSDirectoryManager
YSDirectoryManager是一个目录管理类，该类实现了目录常用操作：创建目录、删除目录、获得沙盒Documnets和temp目录，计算目录（或文件）大小。
方法列表如下：
```
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
```
