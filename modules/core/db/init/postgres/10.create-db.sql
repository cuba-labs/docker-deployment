-- begin SALES_CUSTOMER
create table SALES_CUSTOMER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    EMAIL varchar(100),
    --
    primary key (ID)
)^
-- end SALES_CUSTOMER
-- begin SALES_ORDER
create table SALES_ORDER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DATE_ timestamp not null,
    AMOUNT decimal(19, 2),
    CUSTOMER_ID uuid,
    --
    primary key (ID)
)^
-- end SALES_ORDER
-- begin SALES_PRODUCT
create table SALES_PRODUCT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(50) not null,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end SALES_PRODUCT
-- begin SALES_ORDER_LINE
create table SALES_ORDER_LINE (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PRODUCT_ID uuid not null,
    QUANTITY decimal(19, 3) not null,
    ORDER_ID uuid,
    --
    primary key (ID)
)^
-- end SALES_ORDER_LINE
