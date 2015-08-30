<?php

/**
 * UCenter客户端配置文件
 * 注意：该配置文件请使用常量方式定义
 */

define('DB_APP_ID', 1); //应用ID
define('DB_API_TYPE', 'Model'); //可选值 Model / Service
define('DB_AUTH_KEY', 'b7i5&wKtPdhVf1_JDc?Isv|9elra+L%~o"Z)py$^'); //加密KEY
define('DB_DB_DSN', 'mysql://root:root@127.0.0.1:8889/ceshi'); // 数据库连接，使用Model方式调用API必须配置此项
define('DB_TABLE_PREFIX', '[DB_PREFIX]'); // 数据表前缀，使用Model方式调用API必须配置此项
