create procedure proc_add(in a int, in b int, out c int)
start
    set c = a + b
end;

set @m = 0;
call proc_add(1, 2, @m);
select @m from dual;