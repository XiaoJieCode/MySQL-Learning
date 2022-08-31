# 一、创建一个简单的存储过程

- 语法

    ```mysql
    create procedure <proc_name>([IN/OUT args])
    begin
        <SQL语句>;
    end;
    ```

- 示例：创建一个进行加法运算的存储过程

    ```mysql
    create procedure proc_add(in a int, in b int, out c int)
    begin
    	set c = a + b;
    end;
    ```

    

