-- creating views 

CREATE or replace view v_fact_sales AS SELECT * FROM fact_sales;
CREATE  or replace VIEW v_dim_customer AS SELECT * FROM dim_customer;
CREATE  or replace VIEW v_dim_product  AS SELECT * FROM dim_product;
CREATE or replace VIEW v_dim_geography AS SELECT * FROM dim_geography;
CREATE or replace VIEW v_dim_shipmode AS SELECT * FROM dim_shipmode;
CREATE  or replace VIEW v_dim_date AS SELECT * FROM dim_date;