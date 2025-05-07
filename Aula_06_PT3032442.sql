/* Exercicio 1*/
create user User_A with password = '@2025a!peloAmor5';
create user User_B with password = '@2025a!peloAmor1';
create user User_C with password = '@2025a!peloAmor2';
create user User_D with password = '@2025a!peloAmor3';
create user User_E with password = '@2025a!peloAmor4';

/* Exercicio 2*/
  
GRANT select, alter on SCHEMA:: dbo TO User_A;
revoke SELECT ON dbo.classroom from User_A;
revoke alter ON dbo.classroom from User_A;


/* Exercicio 3*/
SELECT * FROM sysusers;
select  princ.name
,       princ.type_desc
,       perm.permission_name
,       perm.state_desc
,       perm.class_desc
,       object_name(perm.major_id)
from    sys.database_principals princ
left join
        sys.database_permissions perm
on      perm.grantee_principal_id = princ.principal_id
where princ.type_desc = 'SQL_USER' and princ.name = 'User_A'
order by princ.name;

