
-- Test Customers
insert into SALES_CUSTOMER
(ID, CREATE_TS, CREATED_BY, VERSION, NAME, EMAIL)
select newid(), now(), 'admin', 0, 'test' || trim(both ' ' from to_char(i, '00000')), 'test' || trim(both ' ' from to_char(i, '00000')) || '@example.com'
from generate_series(1,10000) i;