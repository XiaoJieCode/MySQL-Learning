

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
    
    mysql>
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
    
    mysql>
    
    ```

    



