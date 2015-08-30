<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Morplee 安装</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="/morplee/Public/static/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="/morplee/Public/Install/css/install.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="assets/js/html5shiv.js"></script>
        <![endif]-->
        <script src="/morplee/Public/static/jquery.min.js"></script>
        <script src="/morplee/Public/static/bootstrap/js/bootstrap.js"></script>
    </head>

    <body data-spy="scroll" data-target=".bs-docs-sidebar">
        <!-- Navbar
        ================================================== -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">安装过程</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Morplee</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                
    <li class="active"><a href="javascript:;">安装协议</a></li>
    <li class="active"><a href="javascript:;">环境检测</a></li>
    <li class="active"><a href="javascript:;">创建数据库</a></li>
    <li><a href="javascript:;"><?php if(($_SESSION['update']) == "1"): ?>升级<?php else: ?>安装<?php endif; ?></a></li>
    <li><a href="javascript:;">完成</a></li>

              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>

        <div class="jumbotron masthead">
            <div class="container">
                
    <?php
 defined('SAE_MYSQL_HOST_M') or define('SAE_MYSQL_HOST_M', '127.0.0.1'); defined('SAE_MYSQL_HOST_M') or define('SAE_MYSQL_PORT', '3306'); ?>
    <h1>创建数据库</h1>
    <form action="/morplee/install.php?s=/install/step2.html" method="post" target="_self">
        <div class="create-database">
            <div class="form-group">
                <div class="col-sm-3">
                    <select name="db[]" class="form-control">
    	                <option>mysql</option>
                    </select>
                </div>
                <span>数据库类型</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="db[]" value="<?php if(defined("SAE_MYSQL_HOST_M")): echo (SAE_MYSQL_HOST_M); else: ?>127.0.0.1<?php endif; ?>">
                </div>
                <span>数据库服务器，数据库服务器IP，一般为127.0.0.1</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="db[]" value="<?php if(defined("SAE_MYSQL_DB")): echo (SAE_MYSQL_DB); endif; ?>">
                </div>
                <span>数据库名（如果托管现有系统，请填写现有系统数据库名）</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="db[]" value="<?php if(defined("SAE_MYSQL_USER")): echo (SAE_MYSQL_USER); endif; ?>">
                </div>
                <span>数据库用户名</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="password" name="db[]" value="<?php if(defined("SAE_MYSQL_PASS")): echo (SAE_MYSQL_PASS); endif; ?>">
                </div>
                <span>数据库密码</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="db[]" value="<?php if(defined("SAE_MYSQL_PORT")): echo (SAE_MYSQL_PORT); else: ?>3306<?php endif; ?>">
                </div>
                <span>数据库端口，数据库服务连接端口，一般为3306</span>
            </div>
        </div>

        <div class="create-database">
            <h2>创始人帐号信息</h2>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="admin[]" value="">
                </div>
                <span>用户名</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="password" name="admin[]" value="">
                </div>
                <span>密码</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="password" name="admin[]" value="">
                </div>
                <span>确认密码</span>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="admin[]" value="">
                </div>
                <span>邮箱，请填写正确的邮箱便于收取提醒邮件</span>
            </div>
        </div>
    </form>

            </div>
        </div>
        
        <!-- Footer
        ================================================== -->
        <footer class="footer navbar-fixed-bottom">
            <div class="container">
                <div>
                	
    <a class="btn btn-success btn-large" href="<?php echo U('Install/step1');?>">上一步</a>
    <button id="submit" type="button" class="btn btn-primary btn-large" onclick="$('form').submit();return false;">下一步</button>

                </div>
            </div>
        </footer>
    </body>
</html>