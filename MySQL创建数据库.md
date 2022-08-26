# MySQL 创建数据库
我们可以在登陆 MySQL 服务后，使用 create 命令创建数据库，语法如下:

    CREATE DATABASE 数据库名;

以下命令简单的演示了创建数据库的过程，数据名为 mydatabase:

    mysql -u root -p   
    Enter password:******  # 登录后进入终端

    mysql> create database mydatabase;
    Query OK, 1 row affected (0.01 sec)