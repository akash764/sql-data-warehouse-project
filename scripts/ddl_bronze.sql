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

manual CSV Import Instructions
-- --------------------------------------------------------------------------------
-- To import data, Use MySQL Workbench Table Data Import Wizard for each CSV:
--
-- 1. Right-click on the SCHEMA (e.g., bronze)
-- 2. Select "Table Data Import Wizard"
-- 3. Browse to CSV file
-- 4. Import into corresponding table:
--      cust_info.csv        --> bronze_crm_cust_info
--      prd_info.csv         --> bronze_crm_prd_info
--      sales_details.csv    --> bronze_crm_sales_details
--      CUST_AZ12.csv        --> bronze_erp_cust_az12
--      LOC_A101.csv         --> bronze_erp_loc_a101
--      PX_CAT_G1V2.csv      --> bronze_erp_px_cat_g1v2
-- 5. Follow the wizard steps and WAIT until the import is complete.
-- 6. Validate row count using:
--      SELECT COUNT(*) FROM table_name;
--
-- --------------------------------------------------------------------------------
-- NOTE:
-- - Ensure your CSV has the same columns in the same order.
-- - Clean up blank rows, mismatched fields, or formatting issues before importing.
-- - You can verify the import with:
--       SELECT COUNT(*) FROM bronze.crm_cust_info;
-- And check for all. 
-- Optional: Use SHOW WARNINGS; to see if any rows were skipped.

