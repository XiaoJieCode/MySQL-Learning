# 示例说明

示例所用数据表生成命令如下：

```mysql
DROP TABLE IF EXISTS `students`;
CREATE TABLE students(
  `stu_num` char(8) primary key,
  `stu_name` varchar(20) NOT NULL,
  `stu_gender` char(2) NOT NULL,
  `stu_age` int NOT NULL,
  `stu_tel` char(11) NOT NULL,
  `stu_qq` varchar(11) unique
);
INSERT INTO `students` VALUES ('20220101', '毛岚', '女', 20, '6142242941', '7047602518');
INSERT INTO `students` VALUES ('20220102', '彭嘉伦', '男', 20, '14457593522', '1615266049');
INSERT INTO `students` VALUES ('20220103', '徐岚', '女', 18, '97491348', '1223892896');
INSERT INTO `students` VALUES ('20220104', '魏秀英', '女', 22, '8041744293', '744493924');
INSERT INTO `students` VALUES ('20220105', '徐杰宏', '男', 21, '669914191', '745525986');
INSERT INTO `students` VALUES ('20220106', '刘睿', '男', 19, '1613574459', '7181281872');
INSERT INTO `students` VALUES ('20220107', '曹杰宏', '男', 18, '63454265', '2040625008');
INSERT INTO `students` VALUES ('20220108', '胡云熙', '男', 19, '7004237886', '76986229739');
INSERT INTO `students` VALUES ('20220109', '孟致远', '男', 18, '7051430607', '5480696150');
INSERT INTO `students` VALUES ('20220110', '陆致远', '男', 19, '13881212439', '7007939318');
INSERT INTO `students` VALUES ('20220111', 'Ethel Munoz', '女', 20, '21816293321', '73275723078');
INSERT INTO `students` VALUES ('20220112', 'Shawn Price', '男', 21, '21463495229', '96942271455');
INSERT INTO `students` VALUES ('20220113', 'Jack Mills', '男', 20, '34251668742', '52439594519');
INSERT INTO `students` VALUES ('20220114', 'Mario Barnes', '男', 20, '71112376437', '58890627696');
INSERT INTO `students` VALUES ('20220115', 'Joel Bailey', '男', 22, '27504155941', '52423164917');
INSERT INTO `students` VALUES ('20220116', 'Andrea Hernandez', '女', 20, '99936360008', '44744494414');
INSERT INTO `students` VALUES ('20220117', 'Timothy Castro', '男', 19, '98970772946', '21390385770');
INSERT INTO `students` VALUES ('20220118', 'Jessica West', '女', 19, '09399988325', '36092863443');
INSERT INTO `students` VALUES ('20220119', 'Lillian Owens', '女', 19, '28785456318', '73508300053');
INSERT INTO `students` VALUES ('20220120', 'Amy Wallace', '女', 18, '52776160374', '48186502078');
```

*注：以上数据为随机生成*

# 一、查询基础语法

## 1. 查询表结构

```mysql
desc <tableName>;
```

- 示例: 查询students表结构

    ```mysql
    mysql> desc students;
    +------------+-------------+------+-----+---------+-------+
    | Field      | Type        | Null | Key | Default | Extra |
    +------------+-------------+------+-----+---------+-------+
    | stu_num    | char(8)     | NO   | PRI | NULL    |       |
    | stu_name   | varchar(20) | NO   |     | NULL    |       |
    | stu_gender | char(2)     | NO   |     | NULL    |       |
    | stu_age    | int         | NO   |     | NULL    |       |
    | stu_tel    | char(11)    | NO   |     | NULL    |       |
    | stu_qq     | varchar(11) | YES  | UNI | NULL    |       |
    +------------+-------------+------+-----+---------+-------+
    6 rows in set (0.00 sec)
    ```
    
    

## 2. 查询指定表中的指定列

```mysql
select columnName1[,columnName2,columnName3...] 
from <tableName>;
```

- 示例: 查询学生表中学生学号对应的学生姓名

    ```mysql
    mysql> select stu_num, stu_name from students;
    +----------+------------------+
    | stu_num  | stu_name         |
    +----------+------------------+
    | 20220101 | 毛岚             |
    | 20220102 | 彭嘉伦           |
    | 20220103 | 徐岚             |
    | 20220104 | 魏秀英           |
    | 20220105 | 徐杰宏           |
    | 20220106 | 刘睿             |
    | 20220107 | 曹杰宏           |
    | 20220108 | 胡云熙           |
    | 20220109 | 孟致远           |
    | 20220110 | 陆致远           |
    | 20220111 | Ethel Munoz      |
    | 20220112 | Shawn Price      |
    | 20220113 | Jack Mills       |
    | 20220114 | Mario Barnes     |
    | 20220115 | Joel Bailey      |
    | 20220116 | Andrea Hernandez |
    | 20220117 | Timothy Castro   |
    | 20220118 | Jessica West     |
    | 20220119 | Lillian Owens    |
    | 20220120 | Amy Wallace      |
    +----------+------------------+
    20 rows in set (0.00 sec)
    ```
    
    



## 3. 查询指定表中的所有列

```mysql
select * 
from <tableName>;
```

- 示例: 查询students表中所有列

    ```mysql
    mysql> select * from students;
    +----------+------------------+------------+---------+-------------+-------------+
    | stu_num  | stu_name         | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+------------------+------------+---------+-------------+-------------+
    | 20220101 | 毛岚             | 女         |      20 | 6142242941  | 7047602518  |
    | 20220102 | 彭嘉伦           | 男         |      20 | 14457593522 | 1615266049  |
    | 20220103 | 徐岚             | 女         |      18 | 97491348    | 1223892896  |
    | 20220104 | 魏秀英           | 女         |      22 | 8041744293  | 744493924   |
    | 20220105 | 徐杰宏           | 男         |      21 | 669914191   | 745525986   |
    | 20220106 | 刘睿             | 男         |      19 | 1613574459  | 7181281872  |
    | 20220107 | 曹杰宏           | 男         |      18 | 63454265    | 2040625008  |
    | 20220108 | 胡云熙           | 男         |      19 | 7004237886  | 76986229739 |
    | 20220109 | 孟致远           | 男         |      18 | 7051430607  | 5480696150  |
    | 20220110 | 陆致远           | 男         |      19 | 13881212439 | 7007939318  |
    | 20220111 | Ethel Munoz      | 女         |      20 | 21816293321 | 73275723078 |
    | 20220112 | Shawn Price      | 男         |      21 | 21463495229 | 96942271455 |
    | 20220113 | Jack Mills       | 男         |      20 | 34251668742 | 52439594519 |
    | 20220114 | Mario Barnes     | 男         |      20 | 71112376437 | 58890627696 |
    | 20220115 | Joel Bailey      | 男         |      22 | 27504155941 | 52423164917 |
    | 20220116 | Andrea Hernandez | 女         |      20 | 99936360008 | 44744494414 |
    | 20220117 | Timothy Castro   | 男         |      19 | 98970772946 | 21390385770 |
    | 20220118 | Jessica West     | 女         |      19 | 09399988325 | 36092863443 |
    | 20220119 | Lillian Owens    | 女         |      19 | 28785456318 | 73508300053 |
    | 20220120 | Amy Wallace      | 女         |      18 | 52776160374 | 48186502078 |
    +----------+------------------+------------+---------+-------------+-------------+
    20 rows in set (0.00 sec)
    ```



# 二、where子句

> ***在删除、修改及查询的语句后都可以跟上where子句，用于筛选满足所给条件的条目***

## 1. 条件运算符

| 符号       | 说明                               |
| ---------- | :--------------------------------- |
| =          | 用于精确查找指定字段的值           |
| !=  或  <> | 用于精确排除排除指定字段的值       |
| >          | 用于查找字段值大于某个数的条目     |
| <          | 用于查找字段值小于某个数的条目     |
| >=         | 用于查找字段值大于等于某个数的条目 |
| <=         | 用于查找字段值小于等于某个数的条目 |

- 语法：

    ```mysql
     select <columnName1>[,columnName2 ...]
     from <tableName> [where <conditions>];
    ```
    
    
    
- 示例：查找学号为20220101的学生

    ```mysql
    mysql> select stu_num, stu_name from students where stu_num='20220101';
    +----------+----------+
    | stu_num  | stu_name |
    +----------+----------+
    | 20220101 | 毛岚     |
    +----------+----------+
    1 row in set (0.00 sec)
    ```
    
- 示例：查找年龄不为22的学生

    ```mysql
    mysql> select stu_num, stu_name,stu_age from students where stu_age!=22;
    +----------+------------------+---------+
    | stu_num  | stu_name         | stu_age |
    +----------+------------------+---------+
    | 20220101 | 毛岚             |      20 |
    | 20220102 | 彭嘉伦           |      20 |
    | 20220103 | 徐岚             |      18 |
    | 20220105 | 徐杰宏           |      21 |
    | 20220106 | 刘睿             |      19 |
    | 20220107 | 曹杰宏           |      18 |
    | 20220108 | 胡云熙           |      19 |
    | 20220109 | 孟致远           |      18 |
    | 20220110 | 陆致远           |      19 |
    | 20220111 | Ethel Munoz      |      20 |
    | 20220112 | Shawn Price      |      21 |
    | 20220113 | Jack Mills       |      20 |
    | 20220114 | Mario Barnes     |      20 |
    | 20220116 | Andrea Hernandez |      20 |
    | 20220117 | Timothy Castro   |      19 |
    | 20220118 | Jessica West     |      19 |
    | 20220119 | Lillian Owens    |      19 |
    | 20220120 | Amy Wallace      |      18 |
    +----------+------------------+---------+
    18 rows in set (0.00 sec)
    ```



## 2. 逻辑运算符

| 符号                | 说明                               |
| ------------------- | :--------------------------------- |
| and                 | 逻辑与                             |
| or                  | 逻辑或                             |
| not                 | 逻辑非                             |
| between ... and ... | 判断字段的数值是否在范围内(闭区间) |

- 示例：查找年龄为18性别是女的同学

    ```mysql
    mysql> select * from students where stu_age=18 and stu_gender='女';
    +----------+-------------+------------+---------+-------------+-------------+
    | stu_num  | stu_name    | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+-------------+------------+---------+-------------+-------------+
    | 20220103 | 徐岚        | 女         |      18 | 97491348    | 1223892896  |
    | 20220120 | Amy Wallace | 女         |      18 | 52776160374 | 48186502078 |
    +----------+-------------+------------+---------+-------------+-------------+
    2 rows in set (0.00 sec)
    ```

- 示例：查找年龄在18-20岁的女同学

    ```mysql
    mysql> select * from students where stu_age between 18 and 20 and stu_gender='女';
    +----------+------------------+------------+---------+-------------+-------------+
    | stu_num  | stu_name         | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+------------------+------------+---------+-------------+-------------+
    | 20220101 | 毛岚             | 女         |      20 | 6142242941  | 7047602518  |
    | 20220103 | 徐岚             | 女         |      18 | 97491348    | 1223892896  |
    | 20220111 | Ethel Munoz      | 女         |      20 | 21816293321 | 73275723078 |
    | 20220116 | Andrea Hernandez | 女         |      20 | 99936360008 | 44744494414 |
    | 20220118 | Jessica West     | 女         |      19 | 09399988325 | 36092863443 |
    | 20220119 | Lillian Owens    | 女         |      19 | 28785456318 | 73508300053 |
    | 20220120 | Amy Wallace      | 女         |      18 | 52776160374 | 48186502078 |
    +----------+------------------+------------+---------+-------------+-------------+
    7 rows in set (0.00 sec)
    ```

    

# 三、like子句

## 1. 匹配运算符

| 符号 | 说明             |
| ---- | ---------------- |
| _    | 表示任意一个字符 |
| %    | 表示任意多个字符 |

- 语法：

    ```mysql
     select <columnName1>[,columnName2 ...]
     from <tableName> 
     where <columnName> [like <var>];
    ```
    
    
    
- 示例：查找学生姓名第四个字母为'l'的学生

    ```mysql
    mysql> select stu_num, stu_name from students where stu_name like '___l%';
    +----------+---------------+
    | stu_num  | stu_name      |
    +----------+---------------+
    | 20220115 | Joel Bailey   |
    | 20220119 | Lillian Owens |
    +----------+---------------+
    2 rows in set (0.00 sec)
    ```

    

- 示例：查找学生姓名以J为字母的学生

    ```mysql
    mysql> select stu_num, stu_name from students where stu_name like 'J%';
    +----------+--------------+
    | stu_num  | stu_name     |
    +----------+--------------+
    | 20220113 | Jack Mills   |
    | 20220115 | Joel Bailey  |
    | 20220118 | Jessica West |
    +----------+--------------+
    3 rows in set (0.00 sec)
    
    ```

- 示例：查找学生名字以'远'字结尾的学生

    ```mysql
    mysql> select stu_num, stu_name from students where stu_name like '%远';
    +----------+----------+
    | stu_num  | stu_name |
    +----------+----------+
    | 20220109 | 孟致远   |
    | 20220110 | 陆致远   |
    +----------+----------+
    2 rows in set (0.00 sec)
    ```

    

# 四、对查询结果的处理

## 1. 查询结果运算

- 可以对某一字段中的所有数值进行加减乘除运算

    示例：查询所有学生**相对于2022年**的出生日期

    ```mysql
    mysql> select stu_name, stu_age, 2022 - stu_age from students;
    +------------------+---------+----------------+
    | stu_name         | stu_age | 2022 - stu_age |
    +------------------+---------+----------------+
    | 毛岚             |      20 |           2002 |
    | 彭嘉伦           |      20 |           2002 |
    | 徐岚             |      18 |           2004 |
    | 魏秀英           |      22 |           2000 |
    | 徐杰宏           |      21 |           2001 |
    | 刘睿             |      19 |           2003 |
    | 曹杰宏           |      18 |           2004 |
    | 胡云熙           |      19 |           2003 |
    | 孟致远           |      18 |           2004 |
    | 陆致远           |      19 |           2003 |
    | Ethel Munoz      |      20 |           2002 |
    | Shawn Price      |      21 |           2001 |
    | Jack Mills       |      20 |           2002 |
    | Mario Barnes     |      20 |           2002 |
    | Joel Bailey      |      22 |           2000 |
    | Andrea Hernandez |      20 |           2002 |
    | Timothy Castro   |      19 |           2003 |
    | Jessica West     |      19 |           2003 |
    | Lillian Owens    |      19 |           2003 |
    | Amy Wallace      |      18 |           2004 |
    +------------------+---------+----------------+
    20 rows in set (0.00 sec)
    ```

    

## 2. 查询结果字段名修改

- 语法

```mysql
<columnName> [as] <newName>
```

- as 关键词可以**省略**

- 示例：对查询表格回显的字段名进行修改

    ```mysql
    mysql> select stu_name as '学生姓名', stu_age as '学生年龄', 2022 - stu_age as '出生日期' from students;
    +------------------+----------+----------+
    | 学生姓名         | 学生年龄 | 出生日期 |
    +------------------+----------+----------+
    | 毛岚             |       20 |     2002 |
    | 彭嘉伦           |       20 |     2002 |
    | 徐岚             |       18 |     2004 |
    | 魏秀英           |       22 |     2000 |
    | 徐杰宏           |       21 |     2001 |
    | 刘睿             |       19 |     2003 |
    | 曹杰宏           |       18 |     2004 |
    | 胡云熙           |       19 |     2003 |
    | 孟致远           |       18 |     2004 |
    | 陆致远           |       19 |     2003 |
    | Ethel Munoz      |       20 |     2002 |
    | Shawn Price      |       21 |     2001 |
    | Jack Mills       |       20 |     2002 |
    | Mario Barnes     |       20 |     2002 |
    | Joel Bailey      |       22 |     2000 |
    | Andrea Hernandez |       20 |     2002 |
    | Timothy Castro   |       19 |     2003 |
    | Jessica West     |       19 |     2003 |
    | Lillian Owens    |       19 |     2003 |
    | Amy Wallace      |       18 |     2004 |
    +------------------+----------+----------+
    20 rows in set (0.00 sec)
    ```
    
    

## 3. 查询结果去重

- 语法

    ```mysql
     select [distinct] <columnName1>[,columnName2 ...] from <tableName>;
    
    ```
    
- 示例：对上文查询结果进行年份去重

    ```mysql
    mysql> select distinct 2022 - stu_age as '出生日期' from students;
    +----------+
    | 出生日期 |
    +----------+
    |     2002 |
    |     2004 |
    |     2000 |
    |     2001 |
    |     2003 |
    +----------+
    5 rows in set (0.00 sec)
    ```

    

## 4. 查询结果排序

- *查询结果默认排序是以主键升序排列*

- 语法

    ```mysql
     select [distinct] <columnName1>[,columnName2 ...]
     from <tableName>
     [order by <columnName3>[,columnName4 ...] 
     [asc|desc]];
    ```
    
- asc为升序

- desc为降序

- 当存在多个排序条件时，以前一个条件为主，后一条件为辅排序

- 示例：将所有学生按照先性别排序，再按年龄升序

    ```mysql
    mysql> select stu_name '姓名',stu_gender '性别', stu_age '年龄' from students order by stu_gender desc , stu_age asc;
    +------------------+------+------+
    | 姓名             | 性别 | 年龄 |
    +------------------+------+------+
    | 曹杰宏           | 男   |   18 |
    | 孟致远           | 男   |   18 |
    | 刘睿             | 男   |   19 |
    | 胡云熙           | 男   |   19 |
    | 陆致远           | 男   |   19 |
    | Timothy Castro   | 男   |   19 |
    | 彭嘉伦           | 男   |   20 |
    | Jack Mills       | 男   |   20 |
    | Mario Barnes     | 男   |   20 |
    | 徐杰宏           | 男   |   21 |
    | Shawn Price      | 男   |   21 |
    | Joel Bailey      | 男   |   22 |
    | 徐岚             | 女   |   18 |
    | Amy Wallace      | 女   |   18 |
    | Jessica West     | 女   |   19 |
    | Lillian Owens    | 女   |   19 |
    | 毛岚             | 女   |   20 |
    | Ethel Munoz      | 女   |   20 |
    | Andrea Hernandez | 女   |   20 |
    | 魏秀英           | 女   |   22 |
    +------------------+------+------+
    20 rows in set (0.00 sec)
    ```



## 5. 分组查询

> *建议先了解第五章SQL内置函数以方便理解*
>
> *count()为SQL内置函数，表示计算传入参数数量*

- 语法

    ```mysql
     select <columnName1>[,columnName2 ...]from <tableName> [group by <columnName> [having <conditions>]];
    ```

    - having 关键字会根据 conditions 对分组后的数据进行筛选

- 示例：统计男女比例

    ```mysql
    mysql> select stu_gender '性别', count(stu_num) '人数' from students group by stu_gender;
    +------+------+
    | 性别 | 人数 |
    +------+------+
    | 女   |    8 |
    | 男   |   12 |
    +------+------+
    2 rows in set (0.00 sec)
    ```

- 示例：统计各年龄人数

    ```mysql
    mysql> select stu_age '年龄', count(stu_num) '人数' from students group by stu_age;
    +------+------+
    | 年龄 | 人数 |
    +------+------+
    |   20 |    6 |
    |   18 |    4 |
    |   22 |    2 |
    |   21 |    2 |
    |   19 |    6 |
    +------+------+
    5 rows in set (0.00 sec)
    ```

- 示例：统计各年龄段人数且年龄人数大于3

    ```mysql
    mysql> select stu_age '年龄', count(stu_name) '人数' from students group by stu_age having count(stu_name)>3 order by stu_age asc;
    +------+------+
    | 年龄 | 人数 |
    +------+------+
    |   18 |    4 |
    |   19 |    6 |
    |   20 |    6 |
    +------+------+
    3 rows in set (0.00 sec)
    ```


## 6. 分页查询

- 语法

    ```mysql
    select <columnName1>[,columnName2, ...] from <tableName> limit <start>,<pageLen>;
    ```

- start表示从表中第几条数据开始查询，索引从0开始

- pageLen为显示一次显示多少行数据

- 示例：查询数据表中第10到15的数据

    ```mysql
    mysql> select * from students limit 9,6;
    +----------+--------------+------------+---------+-------------+-------------+
    | stu_num  | stu_name     | stu_gender | stu_age | stu_tel     | stu_qq      |
    +----------+--------------+------------+---------+-------------+-------------+
    | 20220110 | 陆致远       | 男         |      19 | 13881212439 | 7007939318  |
    | 20220111 | Ethel Munoz  | 女         |      20 | 21816293321 | 73275723078 |
    | 20220112 | Shawn Price  | 男         |      21 | 21463495229 | 96942271455 |
    | 20220113 | Jack Mills   | 男         |      20 | 34251668742 | 52439594519 |
    | 20220114 | Mario Barnes | 男         |      20 | 71112376437 | 58890627696 |
    | 20220115 | Joel Bailey  | 男         |      22 | 27504155941 | 52423164917 |
    +----------+--------------+------------+---------+-------------+-------------+
    6 rows in set (0.00 sec)
    ```

    



# 五、SQL内置函数

> SQL中提供了一些常用的函数

## 1. 聚合函数

| 函数                | 说明             |
| ------------------- | ---------------- |
| count(<columnName>) | 计算该列有多少项 |
| max(<columnName>)   | 计算该列最大值   |
| min(<columnName>)   | 计算该列最小值   |
| sum(<columnName>)   | 计算该列总和     |
| avg(<columnName>)   | 计算该列平均值   |



## 2. 日期函数

| 函数      | 说明                           |
| --------- | ------------------------------ |
| now()     | 系统时间(返回值类型为datetime) |
| sysdate() | 系统时间(返回值类型为datetime) |
| curtime() | 系统时间(返回值类型为time)     |



## 3. 字符串函数

| 函数                                | 说明                             |
| ----------------------------------- | -------------------------------- |
| concat(<args>)                      | 字符串连接函数                   |
| upper(<arg>)                        | 将所给参数值全部转换为大写字母   |
| lower(<arg>)                        | 将所给参数值全部转换为小写字母   |
| substring(<string>, <start>, <len>) | 截取字符串(SQL 的 index 以1开始) |
|                                     |                                  |



# 六、连接查询

- 在MySQL中可以使用join实现多表的联合查询(连接查询)，join按照其功能不同分为三个操作
- inner join 内连接
- left join 左连接
- right join 右连接

- 示例数据准备

> 班级表

```mysql
drop table classes;
drop table students;
create table classes(
    class_id int primary key auto_increment,
    class_name varchar(40) not null unique,
    class_remark varchar(200)
);
```

> 学生表

```mysql
create table students(
    stu_num char(8) primary key,
    stu_name varchar(20) not null,
    stu_gender char (2) not null,
    stu_age int not null,
    cid int,
    constraint FK_STUDENTS_CLASSES foreign key(cid) references classes(class_id)
);
```

> 班级学生数据在mydatabase_backup4.sql文件中
>
> 使用方法：
>
> ```mysql
> source [file_path];
> ```
>
> 



##  1. 内连接

- 语法

    ```mysql
    select <columnName> from <tableName1> inner join <tableName2>;
    ```

    

### 1.1 笛卡尔积

- 笛卡尔积(A集合&B集合)：使用A中的每个记录一次关联B中每个记录，笛卡尔积的总数=A总数*B总数
- 如果直接执行命令，会获取两种数据表的笛卡尔积

### 1.2 内连接条件

>两张表时用inner join 连接查询时生成的笛卡尔积数据很多都是无意义的
>
>我们利用内连接条件消除无意义数据

- 使用 on 设置两张表连接查询的匹配条件(推荐)

    ```mysql
    select * from <tableName1> inner join <tableName2> on students.cid = classes.class_id;
    ```

- 内连接只会获取两张表中匹配条件同时成立的结果，不成立则不显示结果

- 示例

    ```mysql
    // 首先查询数据表中所有学生
    mysql> select * from students;
    +------------+----------+------------+---------+--------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    |
    +------------+----------+------------+---------+--------+
    | 2022010101 | 金子异   | 男         |      18 |   NULL |
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |
    | 2022010201 | 贺宇宁   | 男         |      19 |   NULL |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |
    | 2022020101 | 高睿     | 男         |      18 |   NULL |
    | 2022020102 | 许詩涵   | 女         |      18 | 220201 |
    | 2022020103 | 顾震南   | 男         |      19 | 220201 |
    | 2022020104 | 吴杰宏   | 男         |      19 | 220201 |
    | 2022020201 | 高睿     | 男         |      18 |   NULL |
    | 2022020202 | 许詩涵   | 女         |      18 | 220202 |
    | 2022020203 | 顾震南   | 男         |      19 | 220202 |
    | 2022020204 | 吴杰宏   | 男         |      19 | 220202 |
    | 2022030101 | 钟子异   | 男         |      18 |   NULL |
    | 2022030102 | 任致远   | 男         |      19 | 220301 |
    | 2022030103 | 陈晓明   | 男         |      19 | 220301 |
    | 2022030104 | 马子异   | 男         |      19 | 220301 |
    | 2022030201 | 钟子异   | 男         |      18 |   NULL |
    | 2022030202 | 任致远   | 男         |      19 | 220302 |
    | 2022030203 | 陈晓明   | 男         |      19 | 220302 |
    | 2022030204 | 马子异   | 男         |      19 | 220302 |
    +------------+----------+------------+---------+--------+
    24 rows in set (0.00 sec)
    
    // 使用内连接查询数据
    mysql> select * from students inner join classes where students.cid = classes.class_id;
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    | class_id | class_name | class_remark |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |   220101 | java1      | null         |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |   220101 | java1      | null         |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |   220101 | java1      | null         |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |   220102 | java2      | NULL         |
    | 2022020102 | 许詩涵   | 女         |      18 | 220201 |   220201 | c1         | NULL         |
    | 2022020103 | 顾震南   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020104 | 吴杰宏   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020202 | 许詩涵   | 女         |      18 | 220202 |   220202 | c2         | NULL         |
    | 2022020203 | 顾震南   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022020204 | 吴杰宏   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022030102 | 任致远   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030103 | 陈晓明   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030104 | 马子异   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030202 | 任致远   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030203 | 陈晓明   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030204 | 马子异   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    18 rows in set (0.00 sec)
    ```

-  连接查询可以显示建立连接的表的字段

- 可以看到cid 为null 的学生被过滤了

    

- 使用where 设置两张表连接查询匹配条件(不推荐，效率低)

    ```mysql
    select * from <tableName1> inner join <tableName2> where students.cid = classes.class_id;
    ```

- 执行效果与ON关键字相同，但效率不同





## 2. 左连接

- 语法

    ```mysql
    select <columnName> from <tableName1> left join <tableName2>[on <conditions>] [where <conditions>];
    ```

- 与内连接不同的是左连接会显示tableName1的所有数据

- 示例

    ```mysql
    mysql> select * from students left join classes on students.cid = classes.class_id;
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    | class_id | class_name | class_remark |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | 2022010101 | 金子异   | 男         |      18 |   NULL |     NULL | NULL       | NULL         |
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010201 | 贺宇宁   | 男         |      19 |   NULL |     NULL | NULL       | NULL         |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |   220102 | java2      | NULL         |
    | 2022020101 | 高睿     | 男         |      18 |   NULL |     NULL | NULL       | NULL         |
    | 2022020102 | 许詩涵   | 女         |      18 | 220201 |   220201 | c1         | NULL         |
    | 2022020103 | 顾震南   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020104 | 吴杰宏   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020201 | 高睿     | 男         |      18 |   NULL |     NULL | NULL       | NULL         |
    | 2022020202 | 许詩涵   | 女         |      18 | 220202 |   220202 | c2         | NULL         |
    | 2022020203 | 顾震南   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022020204 | 吴杰宏   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022030101 | 钟子异   | 男         |      18 |   NULL |     NULL | NULL       | NULL         |
    | 2022030102 | 任致远   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030103 | 陈晓明   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030104 | 马子异   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030201 | 钟子异   | 男         |      18 |   NULL |     NULL | NULL       | NULL         |
    | 2022030202 | 任致远   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030203 | 陈晓明   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030204 | 马子异   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    24 rows in set (0.00 sec)
    ```

    

    

## 3. 右连接

- 语法

    ```mysql
    select <columnName> from <tableName1> right join <tableName2> [on <conditions> ] [where <conditions>];
    ```

- 与内连接不同的是右连接会显示tableName1的所有数据

- 示例

    ```mysql
    mysql> select * from students right join classes on students.cid = classes.class_id;
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    | class_id | class_name | class_remark |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |   220101 | java1      | NULL         |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |   220102 | java2      | NULL         |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |   220102 | java2      | NULL         |
    | 2022020102 | 许詩涵   | 女         |      18 | 220201 |   220201 | c1         | NULL         |
    | 2022020103 | 顾震南   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020104 | 吴杰宏   | 男         |      19 | 220201 |   220201 | c1         | NULL         |
    | 2022020202 | 许詩涵   | 女         |      18 | 220202 |   220202 | c2         | NULL         |
    | 2022020203 | 顾震南   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022020204 | 吴杰宏   | 男         |      19 | 220202 |   220202 | c2         | NULL         |
    | 2022030102 | 任致远   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030103 | 陈晓明   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030104 | 马子异   | 男         |      19 | 220301 |   220301 | python1    | NULL         |
    | 2022030202 | 任致远   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030203 | 陈晓明   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    | 2022030204 | 马子异   | 男         |      19 | 220302 |   220302 | python2    | NULL         |
    +------------+----------+------------+---------+--------+----------+------------+--------------+
    18 rows in set (0.00 sec)
    ```



## 4. 数据表别名

> 输入在连接查询的多张表中存在相同名字的字段，我们可以使用  表名.字段名  来进行区分
>
> 如果表名太长则  不便于SQL语句的编写，我们可以使用数据表别名

- 示例：查询students的所有字段和classes的class_id，class_name字段

    ```mysql
    +------------+----------+------------+---------+--------+----------+------------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    | class_id | class_name |
    +------------+----------+------------+---------+--------+----------+------------+
    | 2022020102 | 许詩涵   | 女         |      18 | 220201 |   220201 | c1         |
    | 2022020103 | 顾震南   | 男         |      19 | 220201 |   220201 | c1         |
    | 2022020104 | 吴杰宏   | 男         |      19 | 220201 |   220201 | c1         |
    | 2022020202 | 许詩涵   | 女         |      18 | 220202 |   220202 | c2         |
    | 2022020203 | 顾震南   | 男         |      19 | 220202 |   220202 | c2         |
    | 2022020204 | 吴杰宏   | 男         |      19 | 220202 |   220202 | c2         |
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |   220101 | java1      |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |   220101 | java1      |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |   220101 | java1      |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |   220102 | java2      |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |   220102 | java2      |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |   220102 | java2      |
    | 2022030102 | 任致远   | 男         |      19 | 220301 |   220301 | python1    |
    | 2022030103 | 陈晓明   | 男         |      19 | 220301 |   220301 | python1    |
    | 2022030104 | 马子异   | 男         |      19 | 220301 |   220301 | python1    |
    | 2022030202 | 任致远   | 男         |      19 | 220302 |   220302 | python2    |
    | 2022030203 | 陈晓明   | 男         |      19 | 220302 |   220302 | python2    |
    | 2022030204 | 马子异   | 男         |      19 | 220302 |   220302 | python2    |
    +------------+----------+------------+---------+--------+----------+------------+
    18 rows in set (0.00 sec)
    ```
    



## 5. UNION关键字

- 使用union关键字可以将两次查询结果合并

- 列内容必须一致

- 示例：查询cid = 220101 , 220102 的所有学生

    ```mysql
    mysql> select * from students where cid = 220101
        -> union
        -> select * from students where cid = 220102;
    +------------+----------+------------+---------+--------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    |
    +------------+----------+------------+---------+--------+
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |
    +------------+----------+------------+---------+--------+
    6 rows in set (0.00 sec)
    ```

    

## 6. 子查询

> 子查询：子查询会返回符合条件的一张表，我们可以利用这张表格再进行查询

### 6.1 子查询返回单个值

- 语法

- 仅在返回单个值时才能使用[条件运算符](# 1. 条件运算符)

    ```mysql
    select <columnName> from <tableName1> where <columnName> = (
    	select <columnName> from <tableName2> where <conditions>
    ); 
    ```

- 示例：查询java1班的所有同学

    ```mysql
    mysql> select * from students where cid = (select class_id from classes where class_name = 'java1');
    +------------+----------+------------+---------+--------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    |
    +------------+----------+------------+---------+--------+
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |
    +------------+----------+------------+---------+--------+
    3 rows in set (0.00 sec)
    ```



### 6.3 子查询返回多个值(多行单列)

- 语法

    ```mysql
    select <columnName1>[, columnName] from <tableName1> in (
        select <columnName2> from <tableName2> [where <conditions>]
    );
    ```

- 仅在多行单列时**使用in关键字**来查询

- 示例：查找java所有班级的所有学生

    ```mysql
    mysql>  select * from students where cid in (select class_id from classes where class_name like 'java_');
    +------------+----------+------------+---------+--------+
    | stu_num    | stu_name | stu_gender | stu_age | cid    |
    +------------+----------+------------+---------+--------+
    | 2022010102 | 傅睿     | 男         |      19 | 220101 |
    | 2022010103 | 田嘉伦   | 男         |      19 | 220101 |
    | 2022010104 | 尹震南   | 男         |      19 | 220101 |
    | 2022010202 | 何岚     | 女         |      19 | 220102 |
    | 2022010203 | 苏杰宏   | 男         |      19 | 220102 |
    | 2022010204 | 唐云熙   | 男         |      20 | 220102 |
    +------------+----------+------------+---------+--------+
    6 rows in set (0.00 sec)
    ```

    

###  6.3子查询返回多个值(多行多列)

- 语法

    ```mysql
    select <columnName1> from 
    (
        select <columnName2> from <tableName1> where <conditions>
    ) <virtulName> 
    where <conditions>;
    ```

    

- 括号内的SQL查询语句执行完成后会返回一张虚拟的表格

- **子查询的虚拟表格必须有别名**

- 示例：查询java1班的男同学

    ```mysql
    mysql> select t.stu_num '学号', t.stu_name '学生姓名', t.stu_gender '性别', class_name '班级' from (
        select * from students s inner join classes c on s.cid = c.class_id where stu_gender = ' 男'
    ) t where t.class_name = 'java1' ;
    +------------+----------+------+-------+
    | 学号       | 学生姓名 | 性别 | 班级  |
    +------------+----------+------+-------+
    | 2022010102 | 傅睿     | 男   | java1 |
    | 2022010103 | 田嘉伦   | 男   | java1 |
    | 2022010104 | 尹震南   | 男   | java1 |
    +------------+----------+------+-------+
    3 rows in set (0.00 sec)
    ```






# 七、视图

## 1. 视图简介

- 视图是一种根据查询（也就是select 表达式）定义的数据库对象，用于获取想要看到和使用的局部数据
- 视图有时也被称为“虚拟表”
- 视图可以被用来从常规表（称为”基表“）或其他视图中查询数据
- 相对于从基表中直接过去数据，视图有以下好处：
    - 访问数据变得简单
    - 可被用来对不同用户显示不同的表的内容
- **对视图进行增删改查会影响到原表数据**

## 2. 创建视图

- 语法

    ```mysql
    create view <viewName> as select <columnName>[, <columnName> ...] from <tableName>;
    ```

    

## 3. 删除视图

- 语法

    ```mysql
    drop view <viewName>;
    ```

    