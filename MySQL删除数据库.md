# MySQL 删除数据库
使用普通用户登陆 MySQL 服务器，你可能需要特定的权限来创建或者删除 MySQL 数据库，所以我们这边使用 root 用户登录，root 用户拥有最高权限。

在删除数据库过程中，务必要十分谨慎，因为在执行删除命令后，所有数据将会消失。

## drop 命令删除数据库

drop 命令格式：

    drop database <数据库名>;

例如删除名为 mydatabase 的数据库：

    mysql> drop database mydatabase;