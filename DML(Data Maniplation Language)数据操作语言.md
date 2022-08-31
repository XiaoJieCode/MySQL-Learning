

# 示例说明

示例所用数据表命令如下：

```mysql
create table students(
stu_num char(8) primary key,
stu_name varchar(20) not null,
stu_gender char(2) not null,
stu_age int not null,
stu_tel char(11) not null unique,
stu_qq varchar(11) unique
);
```



# 一、插入数据

> DQL用于完成对数据表中数据的插入、删除和修改操作

## 语法

```mysql
insert into <tableName>[(args1)] values(args2); 
```

说明

- tableName为需要添加数据的表名，[(args1)]为可选参数，即可写成以下格式

    ```mysql
    insert into <tableName> values(args2); 
    ```

    *详情查看示例三*

    

- args1为表中字段，字段之间以逗号分隔

- args2为表中字段值，字段值之间以逗号分隔



## 示例一

- 向students表中插入该学生

    | stu_num(学号) | stu_name(姓名) | stu_gender(性别) | stu_age(年龄) | stu_tel(电话) | stu_qq(QQ)  |
    | ------------- | -------------- | ---------------- | ------------- | ------------- | ----------- |
    | 20220101      | 张三           | 男               | 20            | 12345678912   | 12345678912 |

    命令如下

    ```mysql
    insert into students(stu_num, stu_name, stu_gender, stu_age, stu_tel, stu_qq) 
    values('20220101', '张三', '男', 20,'12345678912', '12345678912'); 
    ```

    

- 执行效果

    ```mysql
    mysql> insert into students(stu_num, stu_name, stu_gender, stu_age, stu_tel, stu_qq)
        -> values('20220101', '张三', '男', 20,'12345678912', '12345678912');
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    +----------+----------+------------+---------+-------------+-------------+
    1 rows in set (0.00 sec)
    
    mysql>
    
    
    ```

    

## 示例二

- 因为stu_qq一列**未填写not null 或 primary 字段限制**，所以在添加数据时可以不填写，默认为NULL

- 向students表中插入该学生

    | stu_num(学号) | stu_name(姓名) | stu_gender(性别) | stu_age(年龄) | stu_tel(电话) | stu_qq(QQ) |
    | ------------- | -------------- | ---------------- | ------------- | ------------- | ---------- |
    | 20220102      | 李四           | 男               | 22            | 12345678913   |            |

    命令如下

    ```mysql
    insert into students(stu_num, stu_name, stu_gender, stu_age, stu_tel)
    values('20220102', '李四', '男', 22,'12345678913'); 
    ```

    

- 执行效果

    ```mysql
    mysql> insert into students(stu_num, stu_name, stu_gender, stu_age, stu_tel)
        -> values('20220102', '李四', '男', 22,'12345678913');
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    +----------+----------+------------+---------+-------------+-------------+
    2 rows in set (0.00 sec)
    ```



## 示例三

- 当需要添加表中**所有列的数据**时可以省略表名字段列表

- 向students表中插入该学生

    | stu_num(学号) | stu_name(姓名) | stu_gender(性别) | stu_age(年龄) | stu_tel(电话) | stu_qq(QQ) |
    | ------------- | -------------- | ---------------- | ------------- | ------------- | ---------- |
    | 20220103      | 王五           | 男               | 21            | 12345678914   | 12345678   |

    命令如下

    ```mysql
    insert into students
    values('20220103', '王五', '男', 21,'12345678914','12345678'); 
    ```

    

- 执行效果

    ```mysql
    mysql> insert into students
        -> values('20220103', '王五', '男', 21,'12345678914','12345678');
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    | 20220103 | 王五     | 男         |      21 | 12345678914 | 12345678    |
    +----------+----------+------------+---------+-------------+-------------+
    3 rows in set (0.00 sec)
    ```

## 示例四

- 当需要添加表中所有列的数据时可以省略表名字段列表
- 可以给可为空列手动写上null,意为不填写

- 向students表中插入该学生

    | stu_num(学号) | stu_name(姓名) | stu_gender(性别) | stu_age(年龄) | stu_tel(电话) | stu_qq(QQ) |
    | ------------- | -------------- | ---------------- | ------------- | ------------- | ---------- |
    | 20220104      | 王老六         | 女               | 19            | 12345678915   |            |

    命令如下

    ```mysql
    insert into students values('20220104', '老六', '女', 19,'12345678915', null);
    ```

    

- 执行效果

    ```mysql
    mysql> insert into students values('20220104', '老六', '女', 19,'12345678915',null);
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    | 20220103 | 王五     | 男         |      21 | 12345678914 | 12345678    |
    | 20220104 | 老六     | 女         |      19 | 12345678915 | NULL        |
    +----------+----------+------------+---------+-------------+-------------+
    4 rows in set (0.00 sec)
    ```

## 

# 二、 删除数据

## 语法

```mysql
delete from <tableName> [where <conditions>];
```

- tableName 为需要操作的表格
- where 为关键字
- conditions 为数据符合的条件
- 当where 不填写时为删除表中**所有数据**

## 示例一

- 删除students表中学号(stu_num)为20220104的学生

    命令如下

    ```mysql
    delete from students where stu_num='20220104';
    ```

    

- 执行效果

    ```mysql
    mysql> delete from students where stu_num='20220104';
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;   // 查询表中数据
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    | 20220103 | 王五     | 男         |      21 | 12345678914 | 12345678    |
    +----------+----------+------------+---------+-------------+-------------+
    3 rows in set (0.00 sec)
    
    mysql>
    ```

    可以看到学号为20220104一行已被移除

    

## 示例二

- 删除students表中学号为年龄大于20的学生

    命令如下

    ```mysql
    delete from students where stu_age>20;
    ```

    

- 执行效果

    ```mysql
    mysql> delete from students where stu_age>20;
    Query OK, 2 rows affected (0.00 sec)
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    +----------+----------+------------+---------+-------------+-------------+
    1 row in set (0.00 sec)
    
    mysql>
    ```

    可以看到只有一行数据



## 示例三

- 删除students表中所有数据

    命令如下

    ```mysql
    delete from students;
    ```

    

- 执行效果

    ```mysql
    mysql> delete from students;
    Query OK, 1 row affected (0.00 sec)
    
    mysql> select * from students;
    Empty set (0.00 sec)
    
    mysql>
    ```

    可以看到表为空

# 三、修改数据

## 语法

```mysql
update <tableName> set <conditions> [where <conditions>]; 
```

- update 和 set为sql关键字

## 示例一

- 将students表中学号为20220101的学生姓名更改为张三

    命令如下

    ```mysql
    update students set stu_name='张三' where stu_num='20220101'; 
    ```

-  执行效果

    ```mysql
    // 首先添加一位学生数据
    mysql> insert into students(stu_num, stu_name, stu_gender, stu_age, stu_tel, stu_qq) 
        -> values('20220101', '老六', '男', 20,'12345678912', '12345678912');
    Query OK, 1 row affected (0.00 sec)
    
    // 查看修改操作前数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 老六     | 男         |      20 | 12345678912 | 12345678912 |
    +----------+----------+------------+---------+-------------+-------------+
    1 row in set (0.00 sec)
    
    // 修改操作
    mysql> update students set stu_name='张三' where stu_num='20220101';
    Query OK, 1 row affected (0.00 sec)
    Rows matched: 1  Changed: 1  Warnings: 0
    
    // 查看修改后数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    +----------+----------+------------+---------+-------------+-------------+
    1 row in set (0.00 sec)
    
    mysql>
    ```

    20220101的学生姓名从老六变为张三了



## 示例二

- 将students表中学号为20220101的学生QQ设为123456，电话设为12345678910

    命令如下

    ```mysql
    update students set stu_qq='123456', stu_tel='12345678910' where stu_num='20220101'; 
    ```

-  执行效果

    ```mysql
    // 查看修改前数据表
    
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    +----------+----------+------------+---------+-------------+-------------+
    1 row in set (0.00 sec)
    
    // 修改操作
    mysql> update students set stu_qq='123456', stu_tel='12345678910' where stu_num='20220101';
    Query OK, 1 row affected (0.00 sec)
    Rows matched: 1  Changed: 1  Warnings: 0
    
    // 查看修改后数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+--------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq |
    +----------+----------+------------+---------+-------------+--------+
    | 20220101 | 张三     | 男         |      20 | 12345678910 | 123456 |
    +----------+----------+------------+---------+-------------+--------+
    1 row in set (0.00 sec)
    
    mysql>
    ```

    成功修改



## 示例三

- 根据主键(primary key)修改其它列

    命令如下

    ```mysql
    update students set stu_name='老六', stu_gender='女', stu_age=18, stu_tel=12345678910, stu_qq='123456'
    where stu_num='20220101'; 
    ```

-  执行效果

    ```mysql
    // 查看修改前数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+--------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq |
    +----------+----------+------------+---------+-------------+--------+
    | 20220101 | 张三     | 男         |      20 | 12345678910 | 123456 |
    +----------+----------+------------+---------+-------------+--------+
    1 row in set (0.00 sec)
    
    // 修改操作
    mysql> update students set stu_name='老六', stu_gender='女', stu_age=18, stu_tel=12345678910, stu_qq='123456'
        -> where stu_num='20220101';
    Query OK, 1 row affected (0.00 sec)
    Rows matched: 1  Changed: 1  Warnings: 0
    
    // 查看修改后的数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+--------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq |
    +----------+----------+------------+---------+-------------+--------+
    | 20220101 | 老六     | 女         |      18 | 12345678910 | 123456 |
    +----------+----------+------------+---------+-------------+--------+
    1 row in set (0.00 sec)
    ```
    
    老六又回来了

    

## 示例四

- 将students表中所有人的qq改为null

    命令如下

    ```mysql
    update students set stu_qq=null; 
    ```

-  执行效果

    ```mysql
    // 修改前数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | 12345678912 |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    | 20220103 | 王五     | 男         |      21 | 12345678914 | 12345678    |
    +----------+----------+------------+---------+-------------+-------------+
    3 row in set (0.00 sec)
    
    // 修改操作
    mysql> update students set stu_qq=null;
    Query OK, 1 row affected (0.00 sec)
    Rows matched: 2  Changed: 2  Warnings: 0
    
    // 修改后数据表
    mysql> select * from students;
    +----------+----------+------------+---------+-------------+-------------+
    | stu_num  | stu_name | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+----------+------------+---------+-------------+-------------+
    | 20220101 | 张三     | 男         |      20 | 12345678912 | NULL        |
    | 20220102 | 李四     | 男         |      22 | 12345678913 | NULL        |
    | 20220103 | 王五     | 男         |      21 | 12345678914 | NULL        |
    +----------+----------+------------+---------+-------------+-------------+
    3 row in set (0.00 sec)
    ```
    
    

# 四、事务

> 一个事务是一个完整的业务逻辑单元，不可再分。
>
> 比如：银行账户转账，从A账户向B账户转账10000，需要执行两条update语句：
>
> ```mysql
> update table_actounts set balance = balance - 10000 where act_num = '0001';
> update table_actounts set balance = balance + 10000 where act_num = '0002';
> ```
>
> 以上两条DML语句必须同时成功或者同时失败，不允许出现一条成功一条失败。
>
> - 要想保证以上的两条DML语句同时成功或者同时失败，就需要使用数据库的“事务机制”。

## 1. 事务特性

- 事务包括四大特性：
- 原子性：事务是最小的工作单元，不可再分
- 一致性：事务必须保证多条DML语句同时成功或者同时失败
- 隔离性：事务A与事务B之间具有隔离
- 持久性：持久性说的是最终数据必须持久化到硬盘文件中，事务才算成功的结束



## 2. 关于事务之间的隔离性

> 事务隔离性存在隔离级别，理论上隔离级别包括4个：
>
> - 第一级别：读未提交(read uncommitted)
>
>     对方事务还没有提交，我们当前事务可以读取到对方未提交的数据
>
>     读未提交存在脏读(dirty read)现象，表示读到了脏的数据
>
> - 第二级别：读已提交(read committed)
>
>     对方失误提交之后的数据我方可以读取到
>
>     这种隔离级别解决了：脏读现象没有了
>
>     读已提交存在的问题是：不可重复读问题
>
> - 第三级别：可重复读(repeatable read)
>
>     这种隔离级别解决了：不可重复读问题
>
>     这种隔离级别存在的问题是：读取到的数据是幻象
>
> - 第四级别：序列化/串行化读
>
>     优点：解决了所有问题
>
>     缺点：效率低，需要事务排队

- *Oracle数据库默认隔离级别是：读已提交*
- *MySQL数据库默认隔离级别是：可重复读*

## 3. 查看全局隔离级别

- 语法

    ```mysql
    select @@transaction_isolation;
    ```

    

## 4. 设置隔离级别

- 语法：

    ```mysql
    set global transaction isolation level [level];
    ```

- 示例：设置隔离级别为  第一级别  读未提交  read committed

    ```mysql
    mysql> set global transaction isolation level read uncommitted;
    Query OK, 0 rows affected (0.00 sec)
    ```

    



# 五、索引

