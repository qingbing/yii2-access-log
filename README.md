# yii2-task
yii2实现组件:接口访问日志

# 使用
## 一、配置

### 1.1 配置控制器 web.php
```php
'controllerMap' => [
    // 请求访问日志
    'access-log'      => \YiiAccessLog\controllers\AccessLogController::class,
]
```

### 1.2 配置启动自动增加接口访问日志 web.php
```php
'bootstrap'     => [
    'bootAccessLog',
],
'components' => [
    'bootAccessLog'  => [
        'class'          => \YiiAccessLog\boots\AccessLogBootstrap::class,
        'accessLogModel' => \YiiAccessLog\models\AccessLogs::class, // 日志模型类
        'open'           => define_var('COM_BOOT_ACCESS_LOG_OPEN', true), // 开启访问日志
        'ignorePaths'    => [
            '*/list', // 列表的日志不记录，太大
        ],
    ],
],
```

### 1.3 组件常量配置 define-local.php
```php
// bootAccessLog 组件配置
defined('COM_BOOT_ACCESS_LOG_OPEN') or define('COM_BOOT_ACCESS_LOG_OPEN', true); // 开启访问日志

```

