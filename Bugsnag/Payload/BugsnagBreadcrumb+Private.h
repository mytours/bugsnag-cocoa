//
//  BugsnagBreadcrumb+Private.h
//  Bugsnag
//
//  Created by Nick Dowell on 04/12/2020.
//  Copyright © 2020 Bugsnag Inc. All rights reserved.
//

#import "BugsnagBreadcrumb.h"

NS_ASSUME_NONNULL_BEGIN

@interface BugsnagBreadcrumb ()

+ (nullable instancetype)breadcrumbFromDict:(NSDictionary *)dict;

+ (nullable instancetype)breadcrumbWithBlock:(void (^)(BugsnagBreadcrumb *))block;

- (nullable NSDictionary *)objectValue;

@end

#ifdef __cplusplus
extern "C" {
#endif

NSString *BSGBreadcrumbTypeValue(BSGBreadcrumbType type);
BSGBreadcrumbType BSGBreadcrumbTypeFromString( NSString * _Nullable value);

#ifdef __cplusplus
}
#endif

NS_ASSUME_NONNULL_END
