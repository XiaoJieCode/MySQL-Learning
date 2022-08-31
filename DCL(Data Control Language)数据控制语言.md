# 一、导出数据库

## 1. 导出整个数据库

- 在windows的dos命令窗口中执行

- 语法：

    ```mysql
    mysqldump <databaseName> > <filePath> -u<databaseName> -p<databasePassword>
    ```

## 2. 导出数据库中的某一张表

- 在windows的dos命令窗口中执行：

- 语法：

    ```mysql
    mysqldump <databaseName> <tableName> > <filePath> -u<databaseName> -p<databasePassword>
    ```

    

# 二、导入数据

- 首先创建数据库

    ```mysql
    create database <databaseName>;
    ```

- 选择数据库

    ```mysql
    use <databaseName>
    ```

- 导入数据

    ```mysql
    source <filePath>
    ```

    

