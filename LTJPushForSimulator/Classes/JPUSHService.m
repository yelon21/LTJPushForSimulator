//
//  JPUSHService.m
//  YJQB
//
//  Created by yelon on 17/4/1.
//  Copyright © 2017年 yelon. All rights reserved.
//

#import "JPUSHService.h"

@implementation JPUSHRegisterEntity

@end

@implementation JPushNotificationIdentifier

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
}

-(id)copyWithZone:(NSZone *)zone{

    return nil;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    return nil;
}

@end

@implementation JPushNotificationContent

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
}

-(id)copyWithZone:(NSZone *)zone{
    
    return nil;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    return nil;
}
@end

@implementation JPushNotificationTrigger

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
}

-(id)copyWithZone:(NSZone *)zone{
    
    return nil;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    return nil;
}
@end

@implementation JPushNotificationRequest

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
}

-(id)copyWithZone:(NSZone *)zone{
    
    return nil;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    return nil;
}
@end

@implementation JPUSHService

///----------------------------------------------------
/// @name Setup 启动相关
///----------------------------------------------------

/*!
 * @abstract 启动SDK
 *
 * @discussion 这是旧版本的启动方法, 依赖于 PushConfig.plist 文件. 建议不要使用, 已经过期.
 */
+ (void)setupWithOption:(NSDictionary *)launchingOption __attribute__((deprecated("JPush 2.1.0 版本已过期"))){
    
}

/*!
 * @abstract 启动SDK
 *
 * @param launchingOption 启动参数.
 * @param appKey 一个JPush 应用必须的,唯一的标识. 请参考 JPush 相关说明文档来获取这个标识.
 * @param channel 发布渠道. 可选.
 * @param isProduction 是否生产环境. 如果为开发状态,设置为 NO; 如果为生产状态,应改为 YES.
 * @param advertisingIdentifier 广告标识符（IDFA） 如果不需要使用IDFA，传nil.
 *
 * @discussion 提供SDK启动必须的参数, 来启动 SDK.
 * 此接口必须在 App 启动时调用, 否则 JPush SDK 将无法正常工作.
 */
+ (void)setupWithOption:(NSDictionary *)launchingOption
                 appKey:(NSString *)appKey
                channel:(NSString *)channel
       apsForProduction:(BOOL)isProduction{
    
}


+ (void)setupWithOption:(NSDictionary *)launchingOption
                 appKey:(NSString *)appKey
                channel:(NSString *)channel
       apsForProduction:(BOOL)isProduction
  advertisingIdentifier:(NSString *)advertisingId{
    
}


///----------------------------------------------------
/// @name APNs about 通知相关
///----------------------------------------------------

/*!
 * @abstract 注册要处理的远程通知类型
 *
 * @param types 通知类型
 * @param categories 类别组
 *
 */
+ (void)registerForRemoteNotificationTypes:(NSUInteger)types
                                categories:(NSSet *)categories{
    
}
/*!
 * @abstract 新版本的注册方法（兼容iOS10）
 *
 * @param config 注册通知配置
 * @param delegate 代理
 *
 */
+ (void)registerForRemoteNotificationConfig:(JPUSHRegisterEntity *)config delegate:(id<JPUSHRegisterDelegate>)delegate{
    
}


+ (void)registerDeviceToken:(NSData *)deviceToken{
    
}


/*!
 * @abstract 处理收到的 APNs 消息
 */
+ (void)handleRemoteNotification:(NSDictionary *)remoteInfo{
    
}


///----------------------------------------------------
/// @name Tag alias setting 设置别名与标签
///----------------------------------------------------

/*!
 * 下面的接口是可选的
 * 设置标签和(或)别名（若参数为nil，则忽略；若是空对象，则清空；详情请参考文档：https://docs.jiguang.cn/jpush/client/iOS/ios_api/）
 * setTags:alias:fetchCompletionHandle:是新的设置标签别名的方法，不再需要显示声明回调函数，只需要在block里面处理设置结果即可.
 * WARN: 使用block时需要注意循环引用问题
 */
+ (void) setTags:(NSSet *)tags
           alias:(NSString *)alias
callbackSelector:(SEL)cbSelector
          target:(id)theTarget __attribute__((deprecated("JPush 2.1.1 版本已过期"))){
    
}

+ (void) setTags:(NSSet *)tags
           alias:(NSString *)alias
callbackSelector:(SEL)cbSelector
          object:(id)theTarget{
    
}

+ (void) setTags:(NSSet *)tags
callbackSelector:(SEL)cbSelector
          object:(id)theTarget{
    
}

+ (void)setTags:(NSSet *)tags
          alias:(NSString *)alias
fetchCompletionHandle:(void (^)(int iResCode, NSSet *iTags, NSString *iAlias))completionHandler{
    
}

+ (void)  setTags:(NSSet *)tags
aliasInbackground:(NSString *)alias{
    
}

+ (void)setAlias:(NSString *)alias
callbackSelector:(SEL)cbSelector
          object:(id)theTarget{
    
}

/*!
 * @abstract 过滤掉无效的 tags
 *
 * @discussion 如果 tags 数量超过限制数量, 则返回靠前的有效的 tags.
 * 建议设置 tags 前用此接口校验. SDK 内部也会基于此接口来做过滤.
 */
+ (NSSet *)filterValidTags:(NSSet *)tags{
    
    return nil;
}


///----------------------------------------------------
/// @name Stats 统计功能
///----------------------------------------------------

/*!
 * @abstract 开始记录页面停留
 *
 * @param pageName 页面名称
 */
+ (void)startLogPageView:(NSString *)pageName{
    
}

/*!
 * @abstract 停止记录页面停留
 *
 * @param pageName 页面
 */
+ (void)stopLogPageView:(NSString *)pageName{
    
}

/*!
 * @abstract 直接上报在页面的停留时间
 *
 * @param pageName 页面
 * @param seconds 停留的秒数
 */
+ (void)beginLogPageView:(NSString *)pageName duration:(int)seconds{
    
}

/*!
 * @abstract 开启Crash日志收集
 *
 * @discussion 默认是关闭状态.
 */
+ (void)crashLogON{
    
}

/*!
 * @abstract 地理位置上报
 *
 * @param latitude 纬度.
 * @param longitude 经度.
 *
 */
+ (void)setLatitude:(double)latitude longitude:(double)longitude{
    
}

/*!
 * @abstract 地理位置上报
 *
 * @param location 直接传递 CLLocation * 型的地理信息
 *
 * @discussion 需要链接 CoreLocation.framework 并且 #import <CoreLocation/CoreLocation.h>
 */
+ (void)setLocation:(CLLocation *)location{
    
}


///----------------------------------------------------
/// @name Local Notification 本地通知
///----------------------------------------------------
/*!
 * @abstract 注册或更新推送 (支持iOS10，并兼容iOS10以下版本)
 *
 * JPush 2.1.9新接口
 * @param request JPushNotificationRequest类型，设置推送的属性，设置已有推送的request.requestIdentifier即更新已有的推送，否则为注册新推送，更新推送仅仅在iOS10以上有效，结果通过request.completionHandler返回
 * @discussion 旧的注册本地推送接口被废弃，使用此接口可以替换
 *
 */
+ (void)addNotification:(JPushNotificationRequest *)request{
    
}

/*!
 * @abstract 移除推送 (支持iOS10，并兼容iOS10以下版本)
 *
 * JPush 2.1.9新接口
 * @param identifier JPushNotificationIdentifier类型，iOS10以上identifier设置为nil，则移除所有在通知中心显示推送和待推送请求，也可以通过设置identifier.delivered和identifier.identifiers来移除相应在通知中心显示推送或待推送请求，identifier.identifiers如果设置为nil或空数组则移除相应标志下所有在通知中心显示推送或待推送请求；iOS10以下identifier设置为nil，则移除所有推送，identifier.delivered属性无效，另外可以通过identifier.notificationObj传入特定推送对象来移除此推送。
 * @discussion 旧的所有删除推送接口被废弃，使用此接口可以替换
 *
 */
+ (void)removeNotification:(JPushNotificationIdentifier *)identifier{
    
}

/*!
 * @abstract 查找推送 (支持iOS10，并兼容iOS10以下版本)
 *
 * JPush 2.1.9新接口
 * @param identifier JPushNotificationIdentifier类型，iOS10以上可以通过设置identifier.delivered和identifier.identifiers来查找相应在通知中心显示推送或待推送请求，identifier.identifiers如果设置为nil或空数组则返回相应标志下所有在通知中心显示推送或待推送请求；iOS10以下identifier.delivered属性无效，identifier.identifiers如果设置nil或空数组则返回所有推送。须要设置identifier.findCompletionHandler回调才能得到查找结果，通过(NSArray *results)返回相应对象数组。
 * @discussion 旧的查找推送接口被废弃，使用此接口可以替换
 *
 */
+ (void)findNotification:(JPushNotificationIdentifier *)identifier{
    
}

/*!
 * @abstract 本地推送，最多支持64个
 *
 * @param fireDate 本地推送触发的时间
 * @param alertBody 本地推送需要显示的内容
 * @param badge 角标的数字。如果不需要改变角标传-1
 * @param alertAction 弹框的按钮显示的内容（IOS 8默认为"打开", 其他默认为"启动"）
 * @param notificationKey 本地推送标示符
 * @param userInfo 自定义参数，可以用来标识推送和增加附加信息
 * @param soundName 自定义通知声音，设置为nil为默认声音
 *
 * @discussion 最多支持 64 个定义，此方法被[addNotification:]方法取代
 */
+ (UILocalNotification *)setLocalNotification:(NSDate *)fireDate
                                    alertBody:(NSString *)alertBody
                                        badge:(int)badge
                                  alertAction:(NSString *)alertAction
                                identifierKey:(NSString *)notificationKey
                                     userInfo:(NSDictionary *)userInfo
                                    soundName:(NSString *)soundName __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
    return nil;
}

/*!
 * @abstract 本地推送 (支持 iOS8 新参数)
 *
 * IOS8新参数
 * @param region 自定义参数
 * @param regionTriggersOnce 自定义参数
 * @param category 自定义参数
 * @discussion 此方法被[addNotification:]方法取代
 */
+ (UILocalNotification *)setLocalNotification:(NSDate *)fireDate
                                    alertBody:(NSString *)alertBody
                                        badge:(int)badge
                                  alertAction:(NSString *)alertAction
                                identifierKey:(NSString *)notificationKey
                                     userInfo:(NSDictionary *)userInfo
                                    soundName:(NSString *)soundName
                                       region:(CLRegion *)region
                           regionTriggersOnce:(BOOL)regionTriggersOnce
                                     category:(NSString *)category NS_AVAILABLE_IOS(8_0) __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
    return nil;
}

/*!
 * @abstract 前台展示本地推送
 *
 * @param notification 本地推送对象
 * @param notificationKey 需要前台显示的本地推送通知的标示符
 *
 * @discussion 默认App在前台运行时不会进行弹窗，在程序接收通知调用此接口可实现指定的推送弹窗。--iOS10以下还可继续使用，iOS10以上在[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:]方法中调用completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert);即可
 */
+ (void)showLocalNotificationAtFront:(UILocalNotification *)notification
                       identifierKey:(NSString *)notificationKey __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
}
/*!
 * @abstract 删除本地推送定义
 *
 * @param notificationKey 本地推送标示符
 * @discussion 此方法被[removeNotification:]方法取代
 */
+ (void)deleteLocalNotificationWithIdentifierKey:(NSString *)notificationKey __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
}

/*!
 * @abstract 删除本地推送定义
 * @discussion 此方法被[removeNotification:]方法取代
 */
+ (void)deleteLocalNotification:(UILocalNotification *)localNotification __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
}

/*!
 * @abstract 获取指定通知
 *
 * @param notificationKey 本地推送标示符
 * @return 本地推送对象数组, [array count]为0时表示没找到
 * @discussion 此方法被[findNotification:]方法取代
 */
+ (NSArray *)findLocalNotificationWithIdentifier:(NSString *)notificationKey __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
    return nil;
}

/*!
 * @abstract 清除所有本地推送对象
 * @discussion 此方法被[removeNotification:]方法取代
 */
+ (void)clearAllLocalNotifications __attribute__((deprecated("JPush 2.1.9 版本已过期"))){
    
}


///----------------------------------------------------
/// @name Server badge 服务器端 badge 功能
///----------------------------------------------------

/*!
 * @abstract 设置角标(到服务器)
 *
 * @param value 新的值. 会覆盖服务器上保存的值(这个用户)
 *
 * @discussion 本接口不会改变应用本地的角标值.
 * 本地仍须调用 UIApplication:setApplicationIconBadgeNumber 函数来设置脚标.
 *
 * 本接口用于配合 JPush 提供的服务器端角标功能.
 * 该功能解决的问题是, 服务器端推送 APNs 时, 并不知道客户端原来已经存在的角标是多少, 指定一个固定的数字不太合理.
 *
 * JPush 服务器端脚标功能提供:
 *
 * - 通过本 API 把当前客户端(当前这个用户的) 的实际 badge 设置到服务器端保存起来;
 * - 调用服务器端 API 发 APNs 时(通常这个调用是批量针对大量用户),
 *   使用 "+1" 的语义, 来表达需要基于目标用户实际的 badge 值(保存的) +1 来下发通知时带上新的 badge 值;
 */
+ (BOOL)setBadge:(NSInteger)value{
    
    return NO;
}

/*!
 * @abstract 重置脚标(为0)
 *
 * @discussion 相当于 [setBadge:0] 的效果.
 * 参考 [JPUSHService setBadge:] 说明来理解其作用.
 */
+ (void)resetBadge{
    
}


///----------------------------------------------------
/// @name Logs and others 日志与其他
///----------------------------------------------------

/*!
 * @abstract JPush标识此设备的 registrationID
 *
 * @discussion SDK注册成功后, 调用此接口获取到 registrationID 才能够获取到.
 *
 * JPush 支持根据 registrationID 来进行推送.
 * 如果你需要此功能, 应该通过此接口获取到 registrationID 后, 上报到你自己的服务器端, 并保存下来.
 * registrationIDCompletionHandler:是新增的获取registrationID的方法，需要在block中获取registrationID,resCode为返回码,模拟器调用此接口resCode返回1011,registrationID返回nil.
 * 更多的理解请参考 JPush 的文档网站.
 */
+ (NSString *)registrationID{
    
    return nil;
}

+ (void)registrationIDCompletionHandler:(void(^)(int resCode,NSString *registrationID))completionHandler{
    
}

/*!
 * @abstract 打开日志级别到 Debug
 *
 * @discussion JMessage iOS 的日志系统参考 Android 设计了级别.
 * 从低到高是: Verbose, Debug, Info, Warning, Error.
 * 对日志级别的进一步理解, 请参考 Android 相关的说明.
 *
 * SDK 默认开启的日志级别为: Info. 只显示必要的信息, 不打印调试日志.
 *
 * 调用本接口可打开日志级别为: Debug, 打印调试日志.
 */
+ (void)setDebugMode{
    
}

/*!
 * @abstract 关闭日志
 *
 * @discussion 关于日志级别的说明, 参考 [JPUSHService setDebugMode]
 *
 * 虽说是关闭日志, 但还是会打印 Warning, Error 日志. 这二种日志级别, 在程序运行正常时, 不应有打印输出.
 *
 * 建议在发布的版本里, 调用此接口, 关闭掉日志打印.
 */
+ (void)setLogOFF{

}


@end

NSString *const kJPFNetworkIsConnectingNotification = @"kJPFNetworkIsConnectingNotification"; // 正在连接中
NSString *const kJPFNetworkDidSetupNotification = @"kJPFNetworkDidSetupNotification";     // 建立连接
NSString *const kJPFNetworkDidCloseNotification = @"kJPFNetworkDidCloseNotification";     // 关闭连接
NSString *const kJPFNetworkDidRegisterNotification = @"kJPFNetworkDidRegisterNotification";  // 注册成功
NSString *const kJPFNetworkFailedRegisterNotification = @"kJPFNetworkFailedRegisterNotification"; //注册失败
NSString *const kJPFNetworkDidLoginNotification = @"kJPFNetworkDidLoginNotification";     // 登录成功
NSString *const kJPFNetworkDidReceiveMessageNotification = @"kJPFNetworkDidReceiveMessageNotification";         // 收到消息(非APNS)
NSString *const kJPFServiceErrorNotification = @"kJPFServiceErrorNotification";  // 错误提示
