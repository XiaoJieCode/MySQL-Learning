# 管理MySQL的命令
以下列出了使用Mysql数据库过程中常用的命令：


## SHOW DATABASES:
列出 MySQL 数据库管理系统的数据库列表。

    mysql> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | sakila             |
    | sys                |
    | world              |
    +--------------------+
    6 rows in set (0.05 sec)

## USE 数据库名 :
选择要操作的Mysql数据库，使用该命令后所有Mysql命令**都只针对该数据库**。

    mysql> use RUNOOB;
    Database changed


    

## SHOW TABLES:
显示指定数据库的所有表，使用该命令前需要**使用 use 命令**来选择要操作的数据库。

    mysql> use sakila;
    Database changed
    mysql> show tables;
    +----------------------------+
    | Tables_in_sakila           |
    +----------------------------+
    | actor                      |
    | actor_info                 |
    | address                    |
    | category                   |
    | city                       |
    | country                    |
    | customer                   |
    | customer_list              |
    | film                       |
    | film_actor                 |
    | film_category              |
    | film_list                  |
    | film_text                  |
    | inventory                  |
    | language                   |
    | nicer_but_slower_film_list |
    | payment                    |
    | rental                     |
    | sales_by_film_category     |
    | sales_by_store             |
    | staff                      |
    | staff_list                 |
    | store                      |
    +----------------------------+
    23 rows in set (0.01 sec)
## SHOW COLUMNS FROM 数据表:

显示数据表的属性，属性类型，主键信息 ，是否为 NULL，默认值等其他信息。

    mysql> show columns from sales_by_store;
    +-------------+---------------+------+-----+---------+-------+
    | Field       | Type          | Null | Key | Default | Extra |
    +-------------+---------------+------+-----+---------+-------+
    | store       | varchar(101)  | YES  |     | NULL    |       |
    | manager     | varchar(91)   | YES  |     | NULL    |       |
    | total_sales | decimal(27,2) | YES  |     | NULL    |       |
    +-------------+---------------+------+-----+---------+-------+
    3 rows in set (0.01 sec)

## SHOW INDEX FROM 数据表:
显示数据表的详细索引信息，包括PRIMARY KEY（主键）。

    mysql> show index from sales_by_store;
    Empty set (0.00 sec)

## SHOW TABLE STATUS [FROM database_name] [LIKE 'pattern'] \G:
该命令将输出Mysql数据库管理系统的性能及统计信息。

    mysql> SHOW TABLE STATUS  FROM RUNOOB;   // 显示数据库 RUNOOB 中所有表的信息

    mysql> SHOW TABLE STATUS from RUNOOB LIKE 'runoob%';     //表名以runoob开头的表的信息
    mysql> SHOW TABLE STATUS from RUNOOB LIKE 'runoob%'\G;   // 加上 \G，查询结果按列打印