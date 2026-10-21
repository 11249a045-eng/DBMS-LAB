
SQL*Plus: Release 11.2.0.1.0 Production on Tue Oct 6 15:10:10 2026

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

Enter user-name: a045@db2021
Enter password:

Connected to:
Oracle Database 11g Release 11.2.0.1.0 - Production

SQL> set serveroutput on;
SQL> declare
  2  n number;
  3  begin
  4  n:=&n;
  5  if n>0 then
  6  dbms_output.put_line('the number is positive');
  7  elseif n<0 then
  8  dbms_output.put_line('the number is negative');
  9  else
 10  dbms_output.put_line('the number is zero');
 11  end if;
 12  end;
 13  /
Enter value for n: 2
old   4: n:=&n;
new   4: n:=2;
elseif n<0 then
       *
ERROR at line 7:
ORA-06550: line 7, column 8:
PLS-00103: Encountered the symbol "N" when expecting one of the following:
:= . ( @ % ;
ORA-06550: line 12, column 4:
PLS-00103: Encountered the symbol ";" when expecting one of the following:
if


SQL>  set serveroutput on;
SQL>  declare
  2   n number;
  3   begin
  4   n:=&n;
  5   if n>0 then
  6   dbms_output.put_line('the number is positive');
  7   elsif n<0 then
  8   dbms_output.put_line('the number is negative');
  9   else
 10   dbms_output.put_line('the number is zero');
 11   end if;
 12   end;
 13  /
Enter value for n: 2
old   4:  n:=&n;
new   4:  n:=2;
the number is positive

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL> declare
  2  a number :=100;
  3  b number :=0;
  4  c number;
  5  begin
  6  c :=a/b;
  7  dbms_output.put_line('result='||c);
  8  exception
  9  when zero_divide then
 10  dbms_output.put_line('error:division by zero is not allowed');
 11  end;
 12  /
error:division by zero is not allowed

PL/SQL procedure successfully completed.

SQL> create table student7
  2  (
  3  student_id number primary key,
  4  student_name varchar2(30)
  5  );

Table created.

SQL> insert into student7 values (101,'arun');

1 row created.

SQL> commit;

Commit complete.

SQL> set serveroutput on;
SQL> declare
  2  v_name student7.student_name%type;
  3  begin
  4  select student_name into v_name from student7 where student_id=999;
  5  dbms_output.put_line(v_name);
  6  exception
  7  where no_data_found then dbms_output.put_line('error:no matching record found');
  8  end;
  9  /
where no_data_found then dbms_output.put_line('error:no matching record found');
*
ERROR at line 7:
ORA-06550: line 7, column 1:
PLS-00103: Encountered the symbol "WHERE" when expecting one of the following:
pragma when
The symbol "when was inserted before "WHERE" to continue.


SQL> set serveroutput on;
SQL>   declare
  2    v_name student7.student_name%type;
  3    begin
  4    select student_name into v_name from student7 where student_id=999;
  5    dbms_output.put_line(v_name);
  6    exception
  7    where no_data_found then
  8    dbms_output.put_line('error:no matching record found');
  9    end;
 10    /
  where no_data_found then
  *
ERROR at line 7:
ORA-06550: line 7, column 3:
PLS-00103: Encountered the symbol "WHERE" when expecting one of the following:
pragma when
The symbol "when was inserted before "WHERE" to continue.


SQL> set serveroutput on;
SQL>   declare
  2    v_name student7.student_name%type;
  3    begin
  4    select student_name into v_name from student7 where student_id=999;
  5    dbms_output.put_line(v_name);
  6    exception
  7    when no_data_found then
  8    dbms_output.put_line('error:no matching record found');
  9    end;
 10    /
error:no matching record found

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL>   declare
  2    v_name student7.student_name%type;
  3    begin
  4    select student_name into v_name from student7 where student_id=101;
  5    dbms_output.put_line(v_name);
  6    exception
  7    when no_data_found then
  8    dbms_output.put_line('error:no matching record found');
  9    end;
 10    /
arun

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL> declare
  2  v_name student7.student_name%type;
  3  begin
  4  select student_name into v_name from student7;
  5  dbms_output.put_line(v_name);
  6  exception
  7  when too_many rows then
  8  dbms_output.put_line('error:query returned multiple rows');
  9  end;
 10  /
when too_many rows then
              *
ERROR at line 7:
ORA-06550: line 7, column 15:
PLS-00103: Encountered the symbol "ROWS" when expecting one of the following:
. then or
The symbol "." was substituted for "ROWS" to continue.


SQL> set serveroutput on;
SQL>  declare
  2   v_name student7.student_name%type;
  3   begin
  4   select student_name into v_name from student7;
  5   dbms_output.put_line(v_name);
  6   exception
  7   when too_many_rows then
  8   dbms_output.put_line('error:query returned multiple rows');
  9   end;
 10   /
arun

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL>  begin
  2  insert into student7 values(101,'abhi');
  3  exception
  4  when dup_val_on_index then
  5  dbms_output.put_line('error:duplicate value violates unique constraint');
  6  end;
  7  /
error:duplicate value violates unique constraint

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL> declare
  2  v_num number(2);
  3  begin
  4  v_num :=12345;
  5  exception
  6  when value_error then
  7  dbms_output.put_line('error:value exceeds variable size');
  8  end;
  9  /
error:value exceeds variable size

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL> declare
  2  v_num number;
  3  begin
  4  v_num :=10/0;
  5  exception
  6  when others then
  7  dbms_output.put_line('sqlcode :'||sqlcode);
  8  dbms_output.put_line('sqlerrm :'||sqlerrm);
  9  end;
 10  /
sqlcode :-1476
sqlerrm :ORA-01476: divisor is equal to zero

PL/SQL procedure successfully completed.

SQL>
