
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

SQL>
