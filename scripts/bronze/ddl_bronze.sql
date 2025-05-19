/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/
use datawarehouse;


DROP TABLE IF EXISTS bronze.crm_cust_info;
create table bronze_crm_cust_info(
id              INT,
cst_key             VARCHAR(50),
cst_firstname       VARCHAR(50),
cst_lastname        VARCHAR(50),
cst_marital_status  VARCHAR(50),
cst_gndr            VARCHAR(50),
cst_create_date     DATE);


DROP TABLE IF EXISTS bronze_crm_prd_info;    
create table bronze_crm_prd_info(
prd_id int,
prd_Key varchar(50),
prd_nm varchar(50),
prd_cost int,
prd_line varchar(50),
prd_start_dt datetime,
prdend_dt datetime);


DROP TABLE IF EXISTS bronze_crm_sales_details;    
create table bronze_crm_sales_details(
sls_ord_num varchar(50),
sls_prd_key varchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int);


DROP TABLE IF EXISTS bronze_erp_loc_a101;
create table bronze_erp_loc_a101(
cid varchar(50),
cntry varchar(50));


DROP TABLE IF EXISTS bronze_erp_cust_az12;
create table bronze_erp_cust_az12(
cid varchar(50),
bdate date,
gen varchar(50));


DROP TABLE IF EXISTS bronze_erp_px_cat_g1v2;
create table bronze_erp_px_cat_g1v2(
id varchar(50),
cat varchar(50),
subcat varchar(50),
maintenance varchar(50));

