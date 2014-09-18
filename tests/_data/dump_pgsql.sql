--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS public.dtb_send_customer_customer_id_key;
DROP INDEX IF EXISTS public.dtb_order_detail_product_id_key;
DROP INDEX IF EXISTS public.dtb_mobile_ext_session_id_url_key;
DROP INDEX IF EXISTS public.dtb_mobile_ext_session_id_param_value_key;
DROP INDEX IF EXISTS public.dtb_mobile_ext_session_id_param_key_key;
DROP INDEX IF EXISTS public.dtb_mobile_ext_session_id_create_date_key;
DROP INDEX IF EXISTS public.dtb_customer_mobile_phone_id_key;
ALTER TABLE IF EXISTS ONLY public.mtb_zip DROP CONSTRAINT IF EXISTS mtb_zip_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_work DROP CONSTRAINT IF EXISTS mtb_work_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_wday DROP CONSTRAINT IF EXISTS mtb_wday_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_taxrule DROP CONSTRAINT IF EXISTS mtb_taxrule_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_target DROP CONSTRAINT IF EXISTS mtb_target_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_status DROP CONSTRAINT IF EXISTS mtb_status_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_status_image DROP CONSTRAINT IF EXISTS mtb_status_image_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_sex DROP CONSTRAINT IF EXISTS mtb_sex_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_review_deny_url DROP CONSTRAINT IF EXISTS mtb_review_deny_url_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_reminder DROP CONSTRAINT IF EXISTS mtb_reminder_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_recommend DROP CONSTRAINT IF EXISTS mtb_recommend_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_product_type DROP CONSTRAINT IF EXISTS mtb_product_type_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_product_status_color DROP CONSTRAINT IF EXISTS mtb_product_status_color_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_product_list_max DROP CONSTRAINT IF EXISTS mtb_product_list_max_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_pref DROP CONSTRAINT IF EXISTS mtb_pref_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_permission DROP CONSTRAINT IF EXISTS mtb_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_page_max DROP CONSTRAINT IF EXISTS mtb_page_max_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_ownersstore_ips DROP CONSTRAINT IF EXISTS mtb_ownersstore_ips_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_ownersstore_err DROP CONSTRAINT IF EXISTS mtb_ownersstore_err_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_order_status DROP CONSTRAINT IF EXISTS mtb_order_status_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_order_status_color DROP CONSTRAINT IF EXISTS mtb_order_status_color_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_mobile_domain DROP CONSTRAINT IF EXISTS mtb_mobile_domain_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_mail_type DROP CONSTRAINT IF EXISTS mtb_mail_type_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_mail_tpl_path DROP CONSTRAINT IF EXISTS mtb_mail_tpl_path_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_mail_template DROP CONSTRAINT IF EXISTS mtb_mail_template_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_mail_magazine_type DROP CONSTRAINT IF EXISTS mtb_mail_magazine_type_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_magazine_type DROP CONSTRAINT IF EXISTS mtb_magazine_type_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_job DROP CONSTRAINT IF EXISTS mtb_job_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_disp DROP CONSTRAINT IF EXISTS mtb_disp_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_disable_logout DROP CONSTRAINT IF EXISTS mtb_disable_logout_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_device_type DROP CONSTRAINT IF EXISTS mtb_device_type_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_delivery_date DROP CONSTRAINT IF EXISTS mtb_delivery_date_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_db DROP CONSTRAINT IF EXISTS mtb_db_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_customer_status DROP CONSTRAINT IF EXISTS mtb_customer_status_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_customer_order_status DROP CONSTRAINT IF EXISTS mtb_customer_order_status_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_country DROP CONSTRAINT IF EXISTS mtb_country_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_constants DROP CONSTRAINT IF EXISTS mtb_constants_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_authority DROP CONSTRAINT IF EXISTS mtb_authority_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_auth_excludes DROP CONSTRAINT IF EXISTS mtb_auth_excludes_pkey;
ALTER TABLE IF EXISTS ONLY public.mtb_allowed_tag DROP CONSTRAINT IF EXISTS mtb_allowed_tag_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_update DROP CONSTRAINT IF EXISTS dtb_update_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_templates DROP CONSTRAINT IF EXISTS dtb_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_tax_rule DROP CONSTRAINT IF EXISTS dtb_tax_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_shipping DROP CONSTRAINT IF EXISTS dtb_shipping_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_shipment_item DROP CONSTRAINT IF EXISTS dtb_shipment_item_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_session DROP CONSTRAINT IF EXISTS dtb_session_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_send_history DROP CONSTRAINT IF EXISTS dtb_send_history_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_send_customer DROP CONSTRAINT IF EXISTS dtb_send_customer_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_review DROP CONSTRAINT IF EXISTS dtb_review_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_recommend_products DROP CONSTRAINT IF EXISTS dtb_recommend_products_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_products DROP CONSTRAINT IF EXISTS dtb_products_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_products_class DROP CONSTRAINT IF EXISTS dtb_products_class_product_id_classcategory_id1_classcatego_key;
ALTER TABLE IF EXISTS ONLY public.dtb_products_class DROP CONSTRAINT IF EXISTS dtb_products_class_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_product_status DROP CONSTRAINT IF EXISTS dtb_product_status_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_product_categories DROP CONSTRAINT IF EXISTS dtb_product_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_plugin DROP CONSTRAINT IF EXISTS dtb_plugin_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_plugin_hookpoint DROP CONSTRAINT IF EXISTS dtb_plugin_hookpoint_pkey;

ALTER TABLE IF EXISTS ONLY public.dtb_payment DROP CONSTRAINT IF EXISTS dtb_payment_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_payment_options DROP CONSTRAINT IF EXISTS dtb_payment_options_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_pagelayout DROP CONSTRAINT IF EXISTS dtb_pagelayout_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_ownersstore_settings DROP CONSTRAINT IF EXISTS dtb_ownersstore_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_other_deliv DROP CONSTRAINT IF EXISTS dtb_other_deliv_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_order_temp DROP CONSTRAINT IF EXISTS dtb_order_temp_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_order DROP CONSTRAINT IF EXISTS dtb_order_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_order_detail DROP CONSTRAINT IF EXISTS dtb_order_detail_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_news DROP CONSTRAINT IF EXISTS dtb_news_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_module_update_logs DROP CONSTRAINT IF EXISTS dtb_module_update_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_module DROP CONSTRAINT IF EXISTS dtb_module_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_mobile_ext_session_id DROP CONSTRAINT IF EXISTS dtb_mobile_ext_session_id_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_member DROP CONSTRAINT IF EXISTS dtb_member_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_maker DROP CONSTRAINT IF EXISTS dtb_maker_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_maker_count DROP CONSTRAINT IF EXISTS dtb_maker_count_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_mailtemplate DROP CONSTRAINT IF EXISTS dtb_mailtemplate_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_mailmaga_template DROP CONSTRAINT IF EXISTS dtb_mailmaga_template_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_mail_history DROP CONSTRAINT IF EXISTS dtb_mail_history_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_kiyaku DROP CONSTRAINT IF EXISTS dtb_kiyaku_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_index_list DROP CONSTRAINT IF EXISTS dtb_index_list_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_holiday DROP CONSTRAINT IF EXISTS dtb_holiday_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_delivtime DROP CONSTRAINT IF EXISTS dtb_delivtime_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_delivfee DROP CONSTRAINT IF EXISTS dtb_delivfee_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_deliv DROP CONSTRAINT IF EXISTS dtb_deliv_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_customer DROP CONSTRAINT IF EXISTS dtb_customer_secret_key_key;
ALTER TABLE IF EXISTS ONLY public.dtb_customer DROP CONSTRAINT IF EXISTS dtb_customer_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_customer_favorite_products DROP CONSTRAINT IF EXISTS dtb_customer_favorite_products_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_csv_sql DROP CONSTRAINT IF EXISTS dtb_csv_sql_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_csv DROP CONSTRAINT IF EXISTS dtb_csv_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_classcategory DROP CONSTRAINT IF EXISTS dtb_classcategory_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_class DROP CONSTRAINT IF EXISTS dtb_class_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_category_total_count DROP CONSTRAINT IF EXISTS dtb_category_total_count_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_category DROP CONSTRAINT IF EXISTS dtb_category_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_category_count DROP CONSTRAINT IF EXISTS dtb_category_count_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_blocposition DROP CONSTRAINT IF EXISTS dtb_blocposition_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_bloc DROP CONSTRAINT IF EXISTS dtb_bloc_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_bloc DROP CONSTRAINT IF EXISTS dtb_bloc_device_type_id_filename_key;
ALTER TABLE IF EXISTS ONLY public.dtb_bkup DROP CONSTRAINT IF EXISTS dtb_bkup_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_best_products DROP CONSTRAINT IF EXISTS dtb_best_products_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_baseinfo DROP CONSTRAINT IF EXISTS dtb_baseinfo_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_api_config DROP CONSTRAINT IF EXISTS dtb_api_config_pkey;
ALTER TABLE IF EXISTS ONLY public.dtb_api_account DROP CONSTRAINT IF EXISTS dtb_api_account_pkey;
DROP TABLE IF EXISTS public.mtb_zip;
DROP TABLE IF EXISTS public.mtb_work;
DROP TABLE IF EXISTS public.mtb_wday;
DROP TABLE IF EXISTS public.mtb_taxrule;
DROP TABLE IF EXISTS public.mtb_target;
DROP TABLE IF EXISTS public.mtb_status_image;
DROP TABLE IF EXISTS public.mtb_status;
DROP TABLE IF EXISTS public.mtb_sex;
DROP TABLE IF EXISTS public.mtb_review_deny_url;
DROP TABLE IF EXISTS public.mtb_reminder;
DROP TABLE IF EXISTS public.mtb_recommend;
DROP TABLE IF EXISTS public.mtb_product_type;
DROP TABLE IF EXISTS public.mtb_product_status_color;
DROP TABLE IF EXISTS public.mtb_product_list_max;
DROP TABLE IF EXISTS public.mtb_pref;
DROP TABLE IF EXISTS public.mtb_permission;
DROP TABLE IF EXISTS public.mtb_page_max;
DROP TABLE IF EXISTS public.mtb_ownersstore_ips;
DROP TABLE IF EXISTS public.mtb_ownersstore_err;
DROP TABLE IF EXISTS public.mtb_order_status_color;
DROP TABLE IF EXISTS public.mtb_order_status;
DROP TABLE IF EXISTS public.mtb_mobile_domain;
DROP TABLE IF EXISTS public.mtb_mail_type;
DROP TABLE IF EXISTS public.mtb_mail_tpl_path;
DROP TABLE IF EXISTS public.mtb_mail_template;
DROP TABLE IF EXISTS public.mtb_mail_magazine_type;
DROP TABLE IF EXISTS public.mtb_magazine_type;
DROP TABLE IF EXISTS public.mtb_job;
DROP TABLE IF EXISTS public.mtb_disp;
DROP TABLE IF EXISTS public.mtb_disable_logout;
DROP TABLE IF EXISTS public.mtb_device_type;
DROP TABLE IF EXISTS public.mtb_delivery_date;
DROP TABLE IF EXISTS public.mtb_db;
DROP TABLE IF EXISTS public.mtb_customer_status;
DROP TABLE IF EXISTS public.mtb_customer_order_status;
DROP TABLE IF EXISTS public.mtb_country;
DROP TABLE IF EXISTS public.mtb_constants;
DROP TABLE IF EXISTS public.mtb_authority;
DROP TABLE IF EXISTS public.mtb_auth_excludes;
DROP TABLE IF EXISTS public.mtb_allowed_tag;
DROP TABLE IF EXISTS public.dtb_update;
DROP TABLE IF EXISTS public.dtb_templates;
DROP SEQUENCE IF EXISTS public.dtb_tax_rule_tax_rule_id_seq;
DROP TABLE IF EXISTS public.dtb_tax_rule;
DROP TABLE IF EXISTS public.dtb_shipping;
DROP TABLE IF EXISTS public.dtb_shipment_item;
DROP TABLE IF EXISTS public.dtb_session;
DROP SEQUENCE IF EXISTS public.dtb_send_history_send_id_seq;
DROP TABLE IF EXISTS public.dtb_send_history;
DROP TABLE IF EXISTS public.dtb_send_customer;
DROP SEQUENCE IF EXISTS public.dtb_review_review_id_seq;
DROP TABLE IF EXISTS public.dtb_review;
DROP TABLE IF EXISTS public.dtb_recommend_products;
DROP SEQUENCE IF EXISTS public.dtb_products_product_id_seq;
DROP SEQUENCE IF EXISTS public.dtb_products_class_product_class_id_seq;
DROP TABLE IF EXISTS public.dtb_products_class;
DROP TABLE IF EXISTS public.dtb_products;
DROP TABLE IF EXISTS public.dtb_product_status;
DROP TABLE IF EXISTS public.dtb_product_categories;
DROP SEQUENCE IF EXISTS public.dtb_plugin_plugin_id_seq;
DROP SEQUENCE IF EXISTS public.dtb_plugin_hookpoint_plugin_hookpoint_id_seq;
DROP TABLE IF EXISTS public.dtb_plugin_hookpoint;
DROP TABLE IF EXISTS public.dtb_plugin;
DROP SEQUENCE IF EXISTS public.dtb_payment_payment_id_seq;
DROP TABLE IF EXISTS public.dtb_payment_options;
DROP TABLE IF EXISTS public.dtb_payment;
DROP SEQUENCE IF EXISTS public.dtb_pagelayout_page_id_seq;
DROP TABLE IF EXISTS public.dtb_pagelayout;
DROP TABLE IF EXISTS public.dtb_ownersstore_settings;
DROP SEQUENCE IF EXISTS public.dtb_other_deliv_other_deliv_id_seq;
DROP TABLE IF EXISTS public.dtb_other_deliv;
DROP TABLE IF EXISTS public.dtb_order_temp;
DROP SEQUENCE IF EXISTS public.dtb_order_order_id_seq;
DROP SEQUENCE IF EXISTS public.dtb_order_detail_order_detail_id_seq;
DROP TABLE IF EXISTS public.dtb_order_detail;
DROP TABLE IF EXISTS public.dtb_order;
DROP SEQUENCE IF EXISTS public.dtb_news_news_id_seq;
DROP TABLE IF EXISTS public.dtb_news;
DROP SEQUENCE IF EXISTS public.dtb_module_update_logs_log_id_seq;
DROP TABLE IF EXISTS public.dtb_module_update_logs;
DROP TABLE IF EXISTS public.dtb_module;
DROP TABLE IF EXISTS public.dtb_mobile_ext_session_id;
DROP SEQUENCE IF EXISTS public.dtb_member_member_id_seq;
DROP TABLE IF EXISTS public.dtb_member;
DROP SEQUENCE IF EXISTS public.dtb_maker_maker_id_seq;
DROP TABLE IF EXISTS public.dtb_maker_count;
DROP TABLE IF EXISTS public.dtb_maker;
DROP TABLE IF EXISTS public.dtb_mailtemplate;
DROP SEQUENCE IF EXISTS public.dtb_mailmaga_template_template_id_seq;
DROP TABLE IF EXISTS public.dtb_mailmaga_template;
DROP SEQUENCE IF EXISTS public.dtb_mail_history_send_id_seq;
DROP TABLE IF EXISTS public.dtb_mail_history;
DROP SEQUENCE IF EXISTS public.dtb_kiyaku_kiyaku_id_seq;
DROP TABLE IF EXISTS public.dtb_kiyaku;
DROP TABLE IF EXISTS public.dtb_index_list;
DROP SEQUENCE IF EXISTS public.dtb_holiday_holiday_id_seq;
DROP TABLE IF EXISTS public.dtb_holiday;
DROP TABLE IF EXISTS public.dtb_delivtime;
DROP TABLE IF EXISTS public.dtb_delivfee;
DROP SEQUENCE IF EXISTS public.dtb_deliv_deliv_id_seq;
DROP TABLE IF EXISTS public.dtb_deliv;
DROP TABLE IF EXISTS public.dtb_customer_favorite_products;
DROP SEQUENCE IF EXISTS public.dtb_customer_customer_id_seq;
DROP TABLE IF EXISTS public.dtb_customer;
DROP SEQUENCE IF EXISTS public.dtb_csv_sql_sql_id_seq;
DROP TABLE IF EXISTS public.dtb_csv_sql;
DROP SEQUENCE IF EXISTS public.dtb_csv_no_seq;
DROP TABLE IF EXISTS public.dtb_csv;
DROP SEQUENCE IF EXISTS public.dtb_classcategory_classcategory_id_seq;
DROP TABLE IF EXISTS public.dtb_classcategory;
DROP SEQUENCE IF EXISTS public.dtb_class_class_id_seq;
DROP TABLE IF EXISTS public.dtb_class;
DROP TABLE IF EXISTS public.dtb_category_total_count;
DROP TABLE IF EXISTS public.dtb_category_count;
DROP SEQUENCE IF EXISTS public.dtb_category_category_id_seq;
DROP TABLE IF EXISTS public.dtb_category;
DROP TABLE IF EXISTS public.dtb_blocposition;
DROP SEQUENCE IF EXISTS public.dtb_bloc_bloc_id_seq;
DROP TABLE IF EXISTS public.dtb_bloc;
DROP TABLE IF EXISTS public.dtb_bkup;
DROP SEQUENCE IF EXISTS public.dtb_best_products_best_id_seq;
DROP TABLE IF EXISTS public.dtb_best_products;
DROP TABLE IF EXISTS public.dtb_baseinfo;
DROP SEQUENCE IF EXISTS public.dtb_api_config_api_config_id_seq;
DROP TABLE IF EXISTS public.dtb_api_config;
DROP SEQUENCE IF EXISTS public.dtb_api_account_api_account_id_seq;
DROP TABLE IF EXISTS public.dtb_api_account;
-- DROP EXTENSION plpgsql;
-- DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- CREATE SCHEMA public;


-- ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

-- COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

-- CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dtb_api_account; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_api_account (
    api_account_id integer NOT NULL,
    api_access_key text NOT NULL,
    api_secret_key text NOT NULL,
    enable smallint DEFAULT 0 NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_api_account OWNER TO eccube_user;

--
-- Name: dtb_api_account_api_account_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_api_account_api_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_api_account_api_account_id_seq OWNER TO eccube_user;

--
-- Name: dtb_api_config; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_api_config (
    api_config_id integer NOT NULL,
    operation_name text NOT NULL,
    operation_description text,
    auth_types text NOT NULL,
    enable smallint DEFAULT 0 NOT NULL,
    is_log smallint DEFAULT 0 NOT NULL,
    sub_data text,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_api_config OWNER TO eccube_user;

--
-- Name: dtb_api_config_api_config_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_api_config_api_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_api_config_api_config_id_seq OWNER TO eccube_user;

--
-- Name: dtb_baseinfo; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_baseinfo (
    id integer NOT NULL,
    company_name text,
    company_kana text,
    zip01 text,
    zip02 text,
    zipcode text,
    country_id integer,
    pref smallint,
    addr01 text,
    addr02 text,
    tel01 text,
    tel02 text,
    tel03 text,
    fax01 text,
    fax02 text,
    fax03 text,
    business_hour text,
    law_company text,
    law_manager text,
    law_zip01 text,
    law_zip02 text,
    law_zipcode text,
    law_country_id integer,
    law_pref smallint,
    law_addr01 text,
    law_addr02 text,
    law_tel01 text,
    law_tel02 text,
    law_tel03 text,
    law_fax01 text,
    law_fax02 text,
    law_fax03 text,
    law_email text,
    law_url text,
    law_term01 text,
    law_term02 text,
    law_term03 text,
    law_term04 text,
    law_term05 text,
    law_term06 text,
    law_term07 text,
    law_term08 text,
    law_term09 text,
    law_term10 text,
    email01 text,
    email02 text,
    email03 text,
    email04 text,
    free_rule numeric,
    shop_name text,
    shop_kana text,
    shop_name_eng text,
    point_rate numeric DEFAULT 0 NOT NULL,
    welcome_point numeric DEFAULT 0 NOT NULL,
    update_date timestamp without time zone NOT NULL,
    top_tpl text,
    product_tpl text,
    detail_tpl text,
    mypage_tpl text,
    good_traded text,
    message text,
    regular_holiday_ids text,
    latitude text,
    longitude text,
    downloadable_days numeric DEFAULT 30,
    downloadable_days_unlimited smallint
);


ALTER TABLE public.dtb_baseinfo OWNER TO eccube_user;

--
-- Name: dtb_best_products; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_best_products (
    best_id integer NOT NULL,
    category_id integer NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    product_id integer NOT NULL,
    title text,
    comment text,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_best_products OWNER TO eccube_user;

--
-- Name: dtb_best_products_best_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_best_products_best_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_best_products_best_id_seq OWNER TO eccube_user;

--
-- Name: dtb_bkup; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_bkup (
    bkup_name text NOT NULL,
    bkup_memo text,
    create_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dtb_bkup OWNER TO eccube_user;

--
-- Name: dtb_bloc; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_bloc (
    device_type_id integer NOT NULL,
    bloc_id integer NOT NULL,
    bloc_name text,
    tpl_path text,
    filename text NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    php_path text,
    deletable_flg smallint DEFAULT 1 NOT NULL,
    plugin_id integer
);


ALTER TABLE public.dtb_bloc OWNER TO eccube_user;

--
-- Name: dtb_bloc_bloc_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_bloc_bloc_id_seq
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_bloc_bloc_id_seq OWNER TO eccube_user;

--
-- Name: dtb_blocposition; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_blocposition (
    device_type_id integer NOT NULL,
    page_id integer NOT NULL,
    target_id integer NOT NULL,
    bloc_id integer NOT NULL,
    bloc_row integer,
    anywhere smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_blocposition OWNER TO eccube_user;

--
-- Name: dtb_category; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_category (
    category_id integer NOT NULL,
    category_name text,
    parent_category_id integer DEFAULT 0 NOT NULL,
    level integer NOT NULL,
    rank integer,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_category OWNER TO eccube_user;

--
-- Name: dtb_category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_category_category_id_seq
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_category_category_id_seq OWNER TO eccube_user;

--
-- Name: dtb_category_count; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_category_count (
    category_id integer NOT NULL,
    product_count integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dtb_category_count OWNER TO eccube_user;

--
-- Name: dtb_category_total_count; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_category_total_count (
    category_id integer NOT NULL,
    product_count integer,
    create_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dtb_category_total_count OWNER TO eccube_user;

--
-- Name: dtb_class; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_class (
    class_id integer NOT NULL,
    name text,
    rank integer,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_class OWNER TO eccube_user;

--
-- Name: dtb_class_class_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_class_class_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_class_class_id_seq OWNER TO eccube_user;

--
-- Name: dtb_classcategory; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_classcategory (
    classcategory_id integer NOT NULL,
    name text,
    class_id integer NOT NULL,
    rank integer,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_classcategory OWNER TO eccube_user;

--
-- Name: dtb_classcategory_classcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_classcategory_classcategory_id_seq
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_classcategory_classcategory_id_seq OWNER TO eccube_user;

--
-- Name: dtb_csv; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_csv (
    no integer NOT NULL,
    csv_id integer NOT NULL,
    col text,
    disp_name text,
    rank integer,
    rw_flg smallint DEFAULT 1,
    status smallint DEFAULT 1 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    mb_convert_kana_option text,
    size_const_type text,
    error_check_types text
);


ALTER TABLE public.dtb_csv OWNER TO eccube_user;

--
-- Name: dtb_csv_no_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_csv_no_seq
    START WITH 157
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_csv_no_seq OWNER TO eccube_user;

--
-- Name: dtb_csv_sql; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_csv_sql (
    sql_id integer NOT NULL,
    sql_name text NOT NULL,
    csv_sql text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_csv_sql OWNER TO eccube_user;

--
-- Name: dtb_csv_sql_sql_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_csv_sql_sql_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_csv_sql_sql_id_seq OWNER TO eccube_user;

--
-- Name: dtb_customer; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_customer (
    customer_id integer NOT NULL,
    name01 text NOT NULL,
    name02 text NOT NULL,
    kana01 text,
    kana02 text,
    company_name text,
    zip01 text,
    zip02 text,
    zipcode text,
    country_id integer,
    pref smallint,
    addr01 text,
    addr02 text,
    email text NOT NULL,
    email_mobile text,
    tel01 text,
    tel02 text,
    tel03 text,
    fax01 text,
    fax02 text,
    fax03 text,
    sex smallint,
    job smallint,
    birth timestamp without time zone,
    password text,
    reminder smallint,
    reminder_answer text,
    salt text,
    secret_key text NOT NULL,
    first_buy_date timestamp without time zone,
    last_buy_date timestamp without time zone,
    buy_times numeric DEFAULT 0,
    buy_total numeric DEFAULT 0,
    point numeric DEFAULT 0 NOT NULL,
    note text,
    status smallint DEFAULT 1 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    mobile_phone_id text,
    mailmaga_flg smallint
);


ALTER TABLE public.dtb_customer OWNER TO eccube_user;

--
-- Name: dtb_customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_customer_customer_id_seq OWNER TO eccube_user;

--
-- Name: dtb_customer_favorite_products; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_customer_favorite_products (
    customer_id integer NOT NULL,
    product_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_customer_favorite_products OWNER TO eccube_user;

--
-- Name: dtb_deliv; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_deliv (
    deliv_id integer NOT NULL,
    product_type_id integer,
    name text,
    service_name text,
    remark text,
    confirm_url text,
    rank integer,
    status smallint DEFAULT 1 NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_deliv OWNER TO eccube_user;

--
-- Name: dtb_deliv_deliv_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_deliv_deliv_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_deliv_deliv_id_seq OWNER TO eccube_user;

--
-- Name: dtb_delivfee; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_delivfee (
    deliv_id integer NOT NULL,
    fee_id integer NOT NULL,
    fee numeric NOT NULL,
    pref smallint
);


ALTER TABLE public.dtb_delivfee OWNER TO eccube_user;

--
-- Name: dtb_delivtime; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_delivtime (
    deliv_id integer NOT NULL,
    time_id integer NOT NULL,
    deliv_time text NOT NULL
);


ALTER TABLE public.dtb_delivtime OWNER TO eccube_user;

--
-- Name: dtb_holiday; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_holiday (
    holiday_id integer NOT NULL,
    title text NOT NULL,
    month smallint NOT NULL,
    day smallint NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_holiday OWNER TO eccube_user;

--
-- Name: dtb_holiday_holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_holiday_holiday_id_seq
    START WITH 16
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_holiday_holiday_id_seq OWNER TO eccube_user;

--
-- Name: dtb_index_list; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_index_list (
    table_name text NOT NULL,
    column_name text NOT NULL,
    recommend_flg smallint DEFAULT 0 NOT NULL,
    recommend_comment text
);


ALTER TABLE public.dtb_index_list OWNER TO eccube_user;

--
-- Name: dtb_kiyaku; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_kiyaku (
    kiyaku_id integer NOT NULL,
    kiyaku_title text NOT NULL,
    kiyaku_text text NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_kiyaku OWNER TO eccube_user;

--
-- Name: dtb_kiyaku_kiyaku_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_kiyaku_kiyaku_id_seq
    START WITH 13
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_kiyaku_kiyaku_id_seq OWNER TO eccube_user;

--
-- Name: dtb_mail_history; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_mail_history (
    send_id integer NOT NULL,
    order_id integer NOT NULL,
    send_date timestamp without time zone,
    template_id integer,
    creator_id integer NOT NULL,
    subject text,
    mail_body text
);


ALTER TABLE public.dtb_mail_history OWNER TO eccube_user;

--
-- Name: dtb_mail_history_send_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_mail_history_send_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_mail_history_send_id_seq OWNER TO eccube_user;

--
-- Name: dtb_mailmaga_template; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_mailmaga_template (
    template_id integer NOT NULL,
    subject text,
    mail_method integer,
    body text,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_mailmaga_template OWNER TO eccube_user;

--
-- Name: dtb_mailmaga_template_template_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_mailmaga_template_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_mailmaga_template_template_id_seq OWNER TO eccube_user;

--
-- Name: dtb_mailtemplate; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_mailtemplate (
    template_id integer NOT NULL,
    subject text,
    header text,
    footer text,
    creator_id integer NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_mailtemplate OWNER TO eccube_user;

--
-- Name: dtb_maker; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_maker (
    maker_id integer NOT NULL,
    name text NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_maker OWNER TO eccube_user;

--
-- Name: dtb_maker_count; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_maker_count (
    maker_id integer NOT NULL,
    product_count integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dtb_maker_count OWNER TO eccube_user;

--
-- Name: dtb_maker_maker_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_maker_maker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_maker_maker_id_seq OWNER TO eccube_user;

--
-- Name: dtb_member; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_member (
    member_id integer NOT NULL,
    name text,
    department text,
    login_id text NOT NULL,
    password text NOT NULL,
    salt text NOT NULL,
    authority smallint NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    work smallint DEFAULT 1 NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    login_date timestamp without time zone
);


ALTER TABLE public.dtb_member OWNER TO eccube_user;

--
-- Name: dtb_member_member_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_member_member_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_member_member_id_seq OWNER TO eccube_user;

--
-- Name: dtb_mobile_ext_session_id; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_mobile_ext_session_id (
    session_id text NOT NULL,
    param_key text,
    param_value text,
    url text,
    create_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dtb_mobile_ext_session_id OWNER TO eccube_user;

--
-- Name: dtb_module; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_module (
    module_id integer NOT NULL,
    module_code text NOT NULL,
    module_name text NOT NULL,
    sub_data text,
    auto_update_flg smallint DEFAULT 0 NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_module OWNER TO eccube_user;

--
-- Name: dtb_module_update_logs; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_module_update_logs (
    log_id integer NOT NULL,
    module_id integer NOT NULL,
    buckup_path text,
    error_flg smallint DEFAULT 0,
    error text,
    ok text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_module_update_logs OWNER TO eccube_user;

--
-- Name: dtb_module_update_logs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_module_update_logs_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_module_update_logs_log_id_seq OWNER TO eccube_user;

--
-- Name: dtb_news; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_news (
    news_id integer NOT NULL,
    news_date timestamp without time zone,
    rank integer,
    news_title text NOT NULL,
    news_comment text,
    news_url text,
    news_select smallint DEFAULT 0 NOT NULL,
    link_method text,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_news OWNER TO eccube_user;

--
-- Name: dtb_news_news_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_news_news_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_news_news_id_seq OWNER TO eccube_user;

--
-- Name: dtb_order; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_order (
    order_id integer NOT NULL,
    order_temp_id text,
    customer_id integer NOT NULL,
    message text,
    order_name01 text,
    order_name02 text,
    order_kana01 text,
    order_kana02 text,
    order_company_name text,
    order_email text,
    order_tel01 text,
    order_tel02 text,
    order_tel03 text,
    order_fax01 text,
    order_fax02 text,
    order_fax03 text,
    order_zip01 text,
    order_zip02 text,
    order_zipcode text,
    order_country_id integer,
    order_pref smallint,
    order_addr01 text,
    order_addr02 text,
    order_sex smallint,
    order_birth timestamp without time zone,
    order_job integer,
    subtotal numeric,
    discount numeric DEFAULT 0 NOT NULL,
    deliv_id integer,
    deliv_fee numeric,
    charge numeric,
    use_point numeric DEFAULT 0 NOT NULL,
    add_point numeric DEFAULT 0 NOT NULL,
    birth_point numeric DEFAULT 0 NOT NULL,
    tax numeric,
    total numeric,
    payment_total numeric,
    payment_id integer,
    payment_method text,
    note text,
    status smallint,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    commit_date timestamp without time zone,
    payment_date timestamp without time zone,
    device_type_id integer,
    del_flg smallint DEFAULT 0 NOT NULL,
    memo01 text,
    memo02 text,
    memo03 text,
    memo04 text,
    memo05 text,
    memo06 text,
    memo07 text,
    memo08 text,
    memo09 text,
    memo10 text
);


ALTER TABLE public.dtb_order OWNER TO eccube_user;

--
-- Name: dtb_order_detail; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_order_detail (
    order_detail_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    product_class_id integer NOT NULL,
    product_name text NOT NULL,
    product_code text,
    classcategory_name1 text,
    classcategory_name2 text,
    price numeric,
    quantity numeric,
    point_rate numeric DEFAULT 0 NOT NULL,
    tax_rate numeric,
    tax_rule smallint
);


ALTER TABLE public.dtb_order_detail OWNER TO eccube_user;

--
-- Name: dtb_order_detail_order_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_order_detail_order_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_order_detail_order_detail_id_seq OWNER TO eccube_user;

--
-- Name: dtb_order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_order_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_order_order_id_seq OWNER TO eccube_user;

--
-- Name: dtb_order_temp; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_order_temp (
    order_temp_id text NOT NULL,
    customer_id integer NOT NULL,
    message text,
    order_name01 text,
    order_name02 text,
    order_kana01 text,
    order_kana02 text,
    order_company_name text,
    order_email text,
    order_tel01 text,
    order_tel02 text,
    order_tel03 text,
    order_fax01 text,
    order_fax02 text,
    order_fax03 text,
    order_zip01 text,
    order_zip02 text,
    order_zipcode text,
    order_country_id integer,
    order_pref smallint,
    order_addr01 text,
    order_addr02 text,
    order_sex smallint,
    order_birth timestamp without time zone,
    order_job integer,
    subtotal numeric,
    discount numeric DEFAULT 0 NOT NULL,
    deliv_id integer,
    deliv_fee numeric,
    charge numeric,
    use_point numeric DEFAULT 0 NOT NULL,
    add_point numeric DEFAULT 0 NOT NULL,
    birth_point numeric DEFAULT 0 NOT NULL,
    tax numeric,
    total numeric,
    payment_total numeric,
    payment_id integer,
    payment_method text,
    note text,
    mail_flag smallint,
    status smallint,
    deliv_check smallint,
    point_check smallint,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    device_type_id integer,
    del_flg smallint DEFAULT 0 NOT NULL,
    order_id integer,
    memo01 text,
    memo02 text,
    memo03 text,
    memo04 text,
    memo05 text,
    memo06 text,
    memo07 text,
    memo08 text,
    memo09 text,
    memo10 text,
    session text
);


ALTER TABLE public.dtb_order_temp OWNER TO eccube_user;

--
-- Name: dtb_other_deliv; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_other_deliv (
    other_deliv_id integer NOT NULL,
    customer_id integer NOT NULL,
    name01 text,
    name02 text,
    kana01 text,
    kana02 text,
    company_name text,
    zip01 text,
    zip02 text,
    zipcode text,
    country_id integer,
    pref smallint,
    addr01 text,
    addr02 text,
    tel01 text,
    tel02 text,
    tel03 text,
    fax01 text,
    fax02 text,
    fax03 text
);


ALTER TABLE public.dtb_other_deliv OWNER TO eccube_user;

--
-- Name: dtb_other_deliv_other_deliv_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_other_deliv_other_deliv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_other_deliv_other_deliv_id_seq OWNER TO eccube_user;

--
-- Name: dtb_ownersstore_settings; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_ownersstore_settings (
    public_key text NOT NULL
);


ALTER TABLE public.dtb_ownersstore_settings OWNER TO eccube_user;

--
-- Name: dtb_pagelayout; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_pagelayout (
    device_type_id integer NOT NULL,
    page_id integer NOT NULL,
    page_name text,
    url text NOT NULL,
    filename text,
    header_chk smallint DEFAULT 1,
    footer_chk smallint DEFAULT 1,
    edit_flg smallint DEFAULT 1,
    author text,
    description text,
    keyword text,
    update_url text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    meta_robots text
);


ALTER TABLE public.dtb_pagelayout OWNER TO eccube_user;

--
-- Name: dtb_pagelayout_page_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_pagelayout_page_id_seq
    START WITH 38
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_pagelayout_page_id_seq OWNER TO eccube_user;

--
-- Name: dtb_payment; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_payment (
    payment_id integer NOT NULL,
    payment_method text,
    charge numeric,
    rule_max numeric,
    rank integer,
    note text,
    fix smallint,
    status smallint DEFAULT 1 NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    payment_image text,
    upper_rule numeric,
    charge_flg smallint DEFAULT 1,
    rule_min numeric,
    upper_rule_max numeric,
    module_id integer,
    module_path text,
    memo01 text,
    memo02 text,
    memo03 text,
    memo04 text,
    memo05 text,
    memo06 text,
    memo07 text,
    memo08 text,
    memo09 text,
    memo10 text
);


ALTER TABLE public.dtb_payment OWNER TO eccube_user;

--
-- Name: dtb_payment_options; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_payment_options (
    deliv_id integer NOT NULL,
    payment_id integer NOT NULL,
    rank integer
);


ALTER TABLE public.dtb_payment_options OWNER TO eccube_user;

--
-- Name: dtb_payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_payment_payment_id_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_payment_payment_id_seq OWNER TO eccube_user;

--
-- Name: dtb_plugin; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_plugin (
    plugin_id integer NOT NULL,
    plugin_name text NOT NULL,
    plugin_code text NOT NULL,
    class_name text NOT NULL,
    author text,
    author_site_url text,
    plugin_site_url text,
    plugin_version text,
    compliant_version text,
    plugin_description text,
    priority integer DEFAULT 0 NOT NULL,
    enable smallint DEFAULT 0 NOT NULL,
    free_field1 text,
    free_field2 text,
    free_field3 text,
    free_field4 text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_plugin OWNER TO eccube_user;

--
-- Name: dtb_plugin_hookpoint; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_plugin_hookpoint (
    plugin_hookpoint_id integer NOT NULL,
    plugin_id integer NOT NULL,
    hook_point text NOT NULL,
    callback text,
    use_flg smallint DEFAULT 1 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_plugin_hookpoint OWNER TO eccube_user;

--
-- Name: dtb_plugin_hookpoint_plugin_hookpoint_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_plugin_hookpoint_plugin_hookpoint_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_plugin_hookpoint_plugin_hookpoint_id_seq OWNER TO eccube_user;

--
-- Name: dtb_plugin_plugin_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_plugin_plugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_plugin_plugin_id_seq OWNER TO eccube_user;

--
-- Name: dtb_product_categories; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_product_categories (
    product_id integer NOT NULL,
    category_id integer NOT NULL,
    rank integer NOT NULL
);


ALTER TABLE public.dtb_product_categories OWNER TO eccube_user;

--
-- Name: dtb_product_status; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_product_status (
    product_status_id smallint NOT NULL,
    product_id integer NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_product_status OWNER TO eccube_user;

--
-- Name: dtb_products; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_products (
    product_id integer NOT NULL,
    name text NOT NULL,
    maker_id integer,
    status smallint DEFAULT 2 NOT NULL,
    comment1 text,
    comment2 text,
    comment3 text,
    comment4 text,
    comment5 text,
    comment6 text,
    note text,
    main_list_comment text,
    main_list_image text,
    main_comment text,
    main_image text,
    main_large_image text,
    sub_title1 text,
    sub_comment1 text,
    sub_image1 text,
    sub_large_image1 text,
    sub_title2 text,
    sub_comment2 text,
    sub_image2 text,
    sub_large_image2 text,
    sub_title3 text,
    sub_comment3 text,
    sub_image3 text,
    sub_large_image3 text,
    sub_title4 text,
    sub_comment4 text,
    sub_image4 text,
    sub_large_image4 text,
    sub_title5 text,
    sub_comment5 text,
    sub_image5 text,
    sub_large_image5 text,
    sub_title6 text,
    sub_comment6 text,
    sub_image6 text,
    sub_large_image6 text,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    deliv_date_id integer
);


ALTER TABLE public.dtb_products OWNER TO eccube_user;

--
-- Name: dtb_products_class; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_products_class (
    product_class_id integer NOT NULL,
    product_id integer NOT NULL,
    classcategory_id1 integer DEFAULT 0 NOT NULL,
    classcategory_id2 integer DEFAULT 0 NOT NULL,
    product_type_id integer DEFAULT 0 NOT NULL,
    product_code text,
    stock numeric,
    stock_unlimited smallint DEFAULT 0 NOT NULL,
    sale_limit numeric,
    price01 numeric,
    price02 numeric NOT NULL,
    deliv_fee numeric,
    point_rate numeric DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    down_filename text,
    down_realfilename text,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_products_class OWNER TO eccube_user;

--
-- Name: dtb_products_class_product_class_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_products_class_product_class_id_seq
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_products_class_product_class_id_seq OWNER TO eccube_user;

--
-- Name: dtb_products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_products_product_id_seq
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_products_product_id_seq OWNER TO eccube_user;

--
-- Name: dtb_recommend_products; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_recommend_products (
    product_id integer NOT NULL,
    recommend_product_id integer NOT NULL,
    rank integer NOT NULL,
    comment text,
    status smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_recommend_products OWNER TO eccube_user;

--
-- Name: dtb_review; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_review (
    review_id integer NOT NULL,
    product_id integer NOT NULL,
    reviewer_name text NOT NULL,
    reviewer_url text,
    sex smallint,
    customer_id integer,
    recommend_level smallint NOT NULL,
    title text NOT NULL,
    comment text NOT NULL,
    status smallint DEFAULT 2,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_review OWNER TO eccube_user;

--
-- Name: dtb_review_review_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_review_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_review_review_id_seq OWNER TO eccube_user;

--
-- Name: dtb_send_customer; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_send_customer (
    customer_id integer NOT NULL,
    send_id integer NOT NULL,
    email text,
    name text,
    send_flag smallint
);


ALTER TABLE public.dtb_send_customer OWNER TO eccube_user;

--
-- Name: dtb_send_history; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_send_history (
    send_id integer NOT NULL,
    mail_method smallint,
    subject text,
    body text,
    send_count integer,
    complete_count integer DEFAULT 0 NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    search_data text,
    del_flg smallint DEFAULT 0 NOT NULL,
    creator_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_send_history OWNER TO eccube_user;

--
-- Name: dtb_send_history_send_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_send_history_send_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_send_history_send_id_seq OWNER TO eccube_user;

--
-- Name: dtb_session; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_session (
    sess_id text NOT NULL,
    sess_data text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_session OWNER TO eccube_user;

--
-- Name: dtb_shipment_item; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_shipment_item (
    shipping_id integer NOT NULL,
    product_class_id integer NOT NULL,
    order_id integer NOT NULL,
    product_name text NOT NULL,
    product_code text,
    classcategory_name1 text,
    classcategory_name2 text,
    price numeric,
    quantity numeric
);


ALTER TABLE public.dtb_shipment_item OWNER TO eccube_user;

--
-- Name: dtb_shipping; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_shipping (
    shipping_id integer NOT NULL,
    order_id integer NOT NULL,
    shipping_name01 text,
    shipping_name02 text,
    shipping_kana01 text,
    shipping_kana02 text,
    shipping_company_name text,
    shipping_tel01 text,
    shipping_tel02 text,
    shipping_tel03 text,
    shipping_fax01 text,
    shipping_fax02 text,
    shipping_fax03 text,
    shipping_country_id integer,
    shipping_pref smallint,
    shipping_zip01 text,
    shipping_zip02 text,
    shipping_zipcode text,
    shipping_addr01 text,
    shipping_addr02 text,
    time_id integer,
    shipping_time text,
    shipping_num text,
    shipping_date timestamp without time zone,
    shipping_commit_date timestamp without time zone,
    rank integer,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.dtb_shipping OWNER TO eccube_user;

--
-- Name: dtb_tax_rule; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_tax_rule (
    tax_rule_id integer NOT NULL,
    country_id integer DEFAULT 0 NOT NULL,
    pref_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_class_id integer DEFAULT 0 NOT NULL,
    calc_rule smallint DEFAULT 1 NOT NULL,
    tax_rate numeric DEFAULT 8 NOT NULL,
    tax_adjust numeric DEFAULT 0 NOT NULL,
    apply_date timestamp without time zone DEFAULT now() NOT NULL,
    member_id integer NOT NULL,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_tax_rule OWNER TO eccube_user;

--
-- Name: dtb_tax_rule_tax_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: eccube_user
--

CREATE SEQUENCE dtb_tax_rule_tax_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtb_tax_rule_tax_rule_id_seq OWNER TO eccube_user;

--
-- Name: dtb_templates; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_templates (
    template_code text NOT NULL,
    device_type_id integer NOT NULL,
    template_name text,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_templates OWNER TO eccube_user;

--
-- Name: dtb_update; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE dtb_update (
    module_id integer NOT NULL,
    module_name text NOT NULL,
    now_version text,
    latest_version text NOT NULL,
    module_explain text,
    main_php text NOT NULL,
    extern_php text NOT NULL,
    install_sql text,
    uninstall_sql text,
    other_files text,
    del_flg smallint DEFAULT 0 NOT NULL,
    create_date timestamp without time zone DEFAULT now() NOT NULL,
    update_date timestamp without time zone NOT NULL,
    release_date timestamp without time zone NOT NULL
);


ALTER TABLE public.dtb_update OWNER TO eccube_user;

--
-- Name: mtb_allowed_tag; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_allowed_tag (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_allowed_tag OWNER TO eccube_user;

--
-- Name: mtb_auth_excludes; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_auth_excludes (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_auth_excludes OWNER TO eccube_user;

--
-- Name: mtb_authority; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_authority (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_authority OWNER TO eccube_user;

--
-- Name: mtb_constants; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_constants (
    id text NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL,
    remarks text
);


ALTER TABLE public.mtb_constants OWNER TO eccube_user;

--
-- Name: mtb_country; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_country (
    id integer NOT NULL,
    name text,
    rank integer NOT NULL
);


ALTER TABLE public.mtb_country OWNER TO eccube_user;

--
-- Name: mtb_customer_order_status; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_customer_order_status (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_customer_order_status OWNER TO eccube_user;

--
-- Name: mtb_customer_status; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_customer_status (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_customer_status OWNER TO eccube_user;

--
-- Name: mtb_db; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_db (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_db OWNER TO eccube_user;

--
-- Name: mtb_delivery_date; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_delivery_date (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_delivery_date OWNER TO eccube_user;

--
-- Name: mtb_device_type; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_device_type (
    id smallint NOT NULL,
    name text,
    rank smallint NOT NULL
);


ALTER TABLE public.mtb_device_type OWNER TO eccube_user;

--
-- Name: mtb_disable_logout; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_disable_logout (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_disable_logout OWNER TO eccube_user;

--
-- Name: mtb_disp; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_disp (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_disp OWNER TO eccube_user;

--
-- Name: mtb_job; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_job (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_job OWNER TO eccube_user;

--
-- Name: mtb_magazine_type; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_magazine_type (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_magazine_type OWNER TO eccube_user;

--
-- Name: mtb_mail_magazine_type; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_mail_magazine_type (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_mail_magazine_type OWNER TO eccube_user;

--
-- Name: mtb_mail_template; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_mail_template (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_mail_template OWNER TO eccube_user;

--
-- Name: mtb_mail_tpl_path; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_mail_tpl_path (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_mail_tpl_path OWNER TO eccube_user;

--
-- Name: mtb_mail_type; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_mail_type (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_mail_type OWNER TO eccube_user;

--
-- Name: mtb_mobile_domain; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_mobile_domain (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_mobile_domain OWNER TO eccube_user;

--
-- Name: mtb_order_status; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_order_status (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_order_status OWNER TO eccube_user;

--
-- Name: mtb_order_status_color; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_order_status_color (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_order_status_color OWNER TO eccube_user;

--
-- Name: mtb_ownersstore_err; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_ownersstore_err (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_ownersstore_err OWNER TO eccube_user;

--
-- Name: mtb_ownersstore_ips; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_ownersstore_ips (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_ownersstore_ips OWNER TO eccube_user;

--
-- Name: mtb_page_max; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_page_max (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_page_max OWNER TO eccube_user;

--
-- Name: mtb_permission; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_permission (
    id text NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_permission OWNER TO eccube_user;

--
-- Name: mtb_pref; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_pref (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_pref OWNER TO eccube_user;

--
-- Name: mtb_product_list_max; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_product_list_max (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_product_list_max OWNER TO eccube_user;

--
-- Name: mtb_product_status_color; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_product_status_color (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_product_status_color OWNER TO eccube_user;

--
-- Name: mtb_product_type; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_product_type (
    id smallint NOT NULL,
    name text,
    rank smallint NOT NULL
);


ALTER TABLE public.mtb_product_type OWNER TO eccube_user;

--
-- Name: mtb_recommend; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_recommend (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_recommend OWNER TO eccube_user;

--
-- Name: mtb_reminder; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_reminder (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_reminder OWNER TO eccube_user;

--
-- Name: mtb_review_deny_url; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_review_deny_url (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_review_deny_url OWNER TO eccube_user;

--
-- Name: mtb_sex; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_sex (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_sex OWNER TO eccube_user;

--
-- Name: mtb_status; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_status (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_status OWNER TO eccube_user;

--
-- Name: mtb_status_image; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_status_image (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_status_image OWNER TO eccube_user;

--
-- Name: mtb_target; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_target (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_target OWNER TO eccube_user;

--
-- Name: mtb_taxrule; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_taxrule (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_taxrule OWNER TO eccube_user;

--
-- Name: mtb_wday; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_wday (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_wday OWNER TO eccube_user;

--
-- Name: mtb_work; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_work (
    id smallint NOT NULL,
    name text,
    rank smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.mtb_work OWNER TO eccube_user;

--
-- Name: mtb_zip; Type: TABLE; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE TABLE mtb_zip (
    zip_id integer NOT NULL,
    zipcode text,
    state text,
    city text,
    town text
);


ALTER TABLE public.mtb_zip OWNER TO eccube_user;

--
-- Data for Name: dtb_api_account; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_api_account (api_account_id, api_access_key, api_secret_key, enable, del_flg, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_api_account_api_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_api_account_api_account_id_seq', 1, false);


--
-- Data for Name: dtb_api_config; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_api_config (api_config_id, operation_name, operation_description, auth_types, enable, is_log, sub_data, del_flg, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_api_config_api_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_api_config_api_config_id_seq', 1, false);


--
-- Data for Name: dtb_baseinfo; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_baseinfo (id, company_name, company_kana, zip01, zip02, zipcode, country_id, pref, addr01, addr02, tel01, tel02, tel03, fax01, fax02, fax03, business_hour, law_company, law_manager, law_zip01, law_zip02, law_zipcode, law_country_id, law_pref, law_addr01, law_addr02, law_tel01, law_tel02, law_tel03, law_fax01, law_fax02, law_fax03, law_email, law_url, law_term01, law_term02, law_term03, law_term04, law_term05, law_term06, law_term07, law_term08, law_term09, law_term10, email01, email02, email03, email04, free_rule, shop_name, shop_kana, shop_name_eng, point_rate, welcome_point, update_date, top_tpl, product_tpl, detail_tpl, mypage_tpl, good_traded, message, regular_holiday_ids, latitude, longitude, downloadable_days, downloadable_days_unlimited) FROM stdin;
1	\N	\N	\N	\N	\N	392	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	test@example.com	test@example.com	test@example.com	test@example.com	\N	!!!Test shop	\N	\N	0	0	2014-09-18 10:12:58.082711	default1	default1	default1	default1	\N	\N	\N	\N	\N	30	\N
\.


--
-- Data for Name: dtb_best_products; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_best_products (best_id, category_id, rank, product_id, title, comment, creator_id, create_date, update_date, del_flg) FROM stdin;
1	0	1	2	\N	たまには鍋でもどうでしょう。	2	2014-09-18 10:01:37.305426	2014-09-18 10:01:37.305426	0
2	0	2	1	\N	お口直しに。	2	2014-09-18 10:01:37.305866	2014-09-18 10:01:37.305866	0
\.


--
-- Name: dtb_best_products_best_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_best_products_best_id_seq', 3, false);


--
-- Data for Name: dtb_bkup; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_bkup (bkup_name, bkup_memo, create_date) FROM stdin;
\.


--
-- Data for Name: dtb_bloc; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_bloc (device_type_id, bloc_id, bloc_name, tpl_path, filename, create_date, update_date, php_path, deletable_flg, plugin_id) FROM stdin;
10	1	カテゴリ	category.tpl	category	2014-09-18 10:01:37.025304	2014-09-18 10:01:37.025304	frontparts/bloc/category.php	0	\N
10	2	利用ガイド	guide.tpl	guide	2014-09-18 10:01:37.025912	2014-09-18 10:01:37.025912	\N	0	\N
10	3	かごの中	cart.tpl	cart	2014-09-18 10:01:37.026344	2014-09-18 10:01:37.026344	frontparts/bloc/cart.php	0	\N
10	4	商品検索	search_products.tpl	search_products	2014-09-18 10:01:37.026643	2014-09-18 10:01:37.026643	frontparts/bloc/search_products.php	0	\N
10	5	新着情報	news.tpl	news	2014-09-18 10:01:37.027196	2014-09-18 10:01:37.027196	frontparts/bloc/news.php	0	\N
10	6	ログイン	login.tpl	login	2014-09-18 10:01:37.027539	2014-09-18 10:01:37.027539	frontparts/bloc/login.php	0	\N
10	7	おすすめ商品	recommend.tpl	recommend	2014-09-18 10:01:37.028067	2014-09-18 10:01:37.028067	frontparts/bloc/recommend.php	0	\N
10	8	カレンダー	calendar.tpl	calendar	2014-09-18 10:01:37.028431	2014-09-18 10:01:37.028431	frontparts/bloc/calendar.php	0	\N
10	9	【ヘッダー】ログイン	login_header.tpl	login_header	2014-09-18 10:01:37.028931	2014-09-18 10:01:37.028931	frontparts/bloc/login_header.php	0	\N
1	1	サイトロゴ	site_logo.tpl	site_logo	2014-09-18 10:01:37.029302	2014-09-18 10:01:37.029302	\N	0	\N
1	2	新着情報	news.tpl	news	2014-09-18 10:01:37.029679	2014-09-18 10:01:37.029679	frontparts/bloc/news.php	0	\N
1	3	おすすめ商品	recommend.tpl	recommend	2014-09-18 10:01:37.030218	2014-09-18 10:01:37.030218	frontparts/bloc/recommend.php	0	\N
1	4	カテゴリ	category.tpl	category	2014-09-18 10:01:37.030549	2014-09-18 10:01:37.030549	frontparts/bloc/category.php	0	\N
2	1	新着情報	news.tpl	news	2014-09-18 10:01:37.031054	2014-09-18 10:01:37.031054	frontparts/bloc/news.php	0	\N
2	2	ログイン	login.tpl	login	2014-09-18 10:01:37.031444	2014-09-18 10:01:37.031444	frontparts/bloc/login.php	0	\N
2	3	おすすめ商品	recommend.tpl	recommend	2014-09-18 10:01:37.031953	2014-09-18 10:01:37.031953	frontparts/bloc/recommend.php	0	\N
2	4	カテゴリ	category.tpl	category	2014-09-18 10:01:37.032315	2014-09-18 10:01:37.032315	frontparts/bloc/category.php	0	\N
2	5	【ヘッダー】ログイン	login_header.tpl	login_header	2014-09-18 10:01:37.032718	2014-09-18 10:01:37.032718	frontparts/bloc/login_header.php	0	\N
2	6	【ヘッダー】ナビ	navi_header.tpl	navi_header	2014-09-18 10:01:37.033209	2014-09-18 10:01:37.033209	frontparts/bloc/navi_header.php	0	\N
2	7	【フッター】ログイン	login_footer.tpl	login_footer	2014-09-18 10:01:37.033621	2014-09-18 10:01:37.033621	frontparts/bloc/login_footer.php	0	\N
2	8	【フッター】ナビ	navi_footer.tpl	navi_footer	2014-09-18 10:01:37.034079	2014-09-18 10:01:37.034079	frontparts/bloc/navi_footer.php	0	\N
\.


--
-- Name: dtb_bloc_bloc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_bloc_bloc_id_seq', 10, false);


--
-- Data for Name: dtb_blocposition; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_blocposition (device_type_id, page_id, target_id, bloc_id, bloc_row, anywhere) FROM stdin;
10	1	1	1	2	0
10	1	1	2	3	0
10	1	1	3	1	0
10	1	3	4	2	0
10	1	3	8	3	0
10	1	4	7	1	0
10	1	4	5	2	0
10	1	3	6	1	0
10	1	10	9	1	1
10	2	1	1	2	0
10	2	1	2	3	0
10	2	1	3	1	0
10	3	1	1	2	0
10	3	1	2	3	0
10	3	1	3	1	0
10	4	1	1	2	0
10	4	1	2	3	0
10	4	1	3	1	0
10	5	1	1	2	0
10	5	1	2	3	0
10	5	1	3	1	0
10	6	1	1	2	0
10	6	1	2	3	0
10	6	1	3	1	0
10	7	1	1	2	0
10	7	1	2	3	0
10	7	1	3	1	0
10	8	1	1	2	0
10	8	1	2	3	0
10	8	1	3	1	0
10	9	1	1	2	0
10	9	1	2	3	0
10	9	1	3	1	0
10	10	1	1	2	0
10	10	1	2	3	0
10	10	1	3	1	0
10	11	1	1	2	0
10	11	1	2	3	0
10	11	1	3	1	0
10	12	1	1	2	0
10	12	1	2	3	0
10	12	1	3	1	0
10	13	1	1	2	0
10	13	1	2	3	0
10	13	1	3	1	0
10	14	1	1	2	0
10	14	1	2	3	0
10	14	1	3	1	0
10	15	1	1	2	0
10	15	1	2	3	0
10	15	1	3	1	0
10	16	1	1	2	0
10	16	1	2	3	0
10	16	1	3	1	0
10	17	1	1	2	0
10	17	1	2	3	0
10	17	1	3	1	0
10	18	1	1	2	0
10	18	1	2	3	0
10	18	1	3	1	0
10	19	1	1	2	0
10	19	1	2	3	0
10	19	1	3	1	0
10	20	1	1	2	0
10	20	1	2	3	0
10	20	1	3	1	0
10	21	1	1	2	0
10	21	1	2	3	0
10	21	1	3	1	0
10	22	1	1	2	0
10	22	1	2	3	0
10	22	1	3	1	0
10	23	1	1	2	0
10	23	1	2	3	0
10	23	1	3	1	0
10	24	1	1	2	0
10	24	1	2	3	0
10	24	1	3	1	0
10	25	1	1	2	0
10	25	1	2	3	0
10	25	1	3	1	0
10	26	1	1	2	0
10	26	1	2	3	0
10	26	1	3	1	0
10	27	1	1	2	0
10	27	1	2	3	0
10	27	1	3	1	0
10	28	1	1	2	0
10	28	1	2	3	0
10	28	1	3	1	0
1	1	10	1	1	0
1	1	2	2	1	0
1	1	2	3	2	0
1	1	2	4	3	0
2	1	4	1	4	0
2	1	4	2	1	0
2	1	4	3	2	0
2	1	4	4	3	0
2	1	6	7	2	0
2	1	6	8	1	0
2	1	10	5	1	0
2	2	6	7	2	0
2	2	6	8	1	0
2	2	10	6	1	0
2	3	6	7	2	0
2	3	6	8	1	0
2	3	10	6	1	0
2	4	6	7	2	0
2	4	6	8	1	0
2	4	10	6	1	0
2	5	6	7	2	0
2	5	6	8	1	0
2	5	10	6	1	0
2	6	6	7	2	0
2	6	6	8	1	0
2	6	10	6	1	0
2	7	6	7	2	0
2	7	6	8	1	0
2	7	10	6	1	0
2	8	6	7	2	0
2	8	6	8	1	0
2	8	10	6	1	0
2	9	6	7	2	0
2	9	6	8	1	0
2	9	10	6	1	0
2	10	6	7	2	0
2	10	6	8	1	0
2	10	10	6	1	0
2	11	6	7	2	0
2	11	6	8	1	0
2	11	10	6	1	0
2	12	6	7	2	0
2	12	6	8	1	0
2	12	10	6	1	0
2	13	6	7	2	0
2	13	6	8	1	0
2	13	10	6	1	0
2	14	6	7	2	0
2	14	6	8	1	0
2	14	10	6	1	0
2	15	6	7	2	0
2	15	6	8	1	0
2	15	10	6	1	0
2	16	6	7	2	0
2	16	6	8	1	0
2	16	10	6	1	0
2	17	6	7	2	0
2	17	6	8	1	0
2	17	10	6	1	0
2	18	6	7	2	0
2	18	6	8	1	0
2	18	10	6	1	0
2	19	6	7	2	0
2	19	6	8	1	0
2	19	10	6	1	0
2	20	6	7	2	0
2	20	6	8	1	0
2	20	10	6	1	0
2	21	6	7	2	0
2	21	6	8	1	0
2	21	10	6	1	0
2	22	6	7	2	0
2	22	6	8	1	0
2	22	10	6	1	0
2	23	6	7	2	0
2	23	6	8	1	0
2	23	10	6	1	0
2	24	6	7	2	0
2	24	6	8	1	0
2	24	10	6	1	0
2	25	6	7	2	0
2	25	6	8	1	0
2	25	10	6	1	0
2	26	6	7	2	0
2	26	6	8	1	0
2	26	10	6	1	0
2	27	6	7	2	0
2	27	6	8	1	0
2	27	10	6	1	0
2	28	6	7	2	0
2	28	6	8	1	0
2	28	10	6	1	0
2	29	6	7	2	0
2	29	6	8	1	0
2	29	10	6	1	0
\.


--
-- Data for Name: dtb_category; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_category (category_id, category_name, parent_category_id, level, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
1	食品	0	1	5	2	2014-09-18 10:01:37.114894	2014-09-18 10:01:37.114894	0
2	雑貨	0	1	6	2	2014-09-18 10:01:37.115332	2014-09-18 10:01:37.115332	0
3	お菓子	1	2	3	2	2014-09-18 10:01:37.115738	2014-09-18 10:01:37.115738	0
4	なべ	1	2	4	2	2014-09-18 10:01:37.116199	2014-09-18 10:01:37.116199	0
5	アイス	3	3	2	2	2014-09-18 10:01:37.116632	2014-09-18 10:01:37.116632	0
6	レシピ	0	1	1	2	2014-09-18 10:01:37.117069	2014-09-18 10:01:37.117069	0
\.


--
-- Name: dtb_category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_category_category_id_seq', 7, false);


--
-- Data for Name: dtb_category_count; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_category_count (category_id, product_count, create_date) FROM stdin;
4	2	2014-09-18 10:01:37.117507
5	1	2014-09-18 10:01:37.11794
6	1	2014-09-18 10:01:37.118375
\.


--
-- Data for Name: dtb_category_total_count; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_category_total_count (category_id, product_count, create_date) FROM stdin;
3	1	2014-09-18 10:01:37.118821
1	3	2014-09-18 10:01:37.119282
2	\N	2014-09-18 10:01:37.119687
5	1	2014-09-18 10:01:37.120151
4	2	2014-09-18 10:01:37.120546
6	1	2014-09-18 10:01:37.121023
\.


--
-- Data for Name: dtb_class; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_class (class_id, name, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
1	味	1	2	2014-09-18 10:01:37.121413	2014-09-18 10:01:37.121413	0
2	大きさ	2	2	2014-09-18 10:01:37.121855	2014-09-18 10:01:37.121855	0
\.


--
-- Name: dtb_class_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_class_class_id_seq', 3, false);


--
-- Data for Name: dtb_classcategory; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_classcategory (classcategory_id, name, class_id, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
1	バニラ	1	1	2	2014-09-18 10:01:37.122288	2014-09-18 10:01:37.122288	0
2	チョコ	1	2	2	2014-09-18 10:01:37.122697	2014-09-18 10:01:37.122697	0
3	抹茶	1	3	2	2014-09-18 10:01:37.123197	2014-09-18 10:01:37.123197	0
4	L	2	1	2	2014-09-18 10:01:37.123591	2014-09-18 10:01:37.123591	0
5	M	2	2	2	2014-09-18 10:01:37.124067	2014-09-18 10:01:37.124067	0
6	S	2	3	2	2014-09-18 10:01:37.124463	2014-09-18 10:01:37.124463	0
0	\N	0	0	0	2014-09-18 10:01:37.124935	2014-09-18 10:01:37.124935	0
\.


--
-- Name: dtb_classcategory_classcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_classcategory_classcategory_id_seq', 7, false);


--
-- Data for Name: dtb_csv; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_csv (no, csv_id, col, disp_name, rank, rw_flg, status, create_date, update_date, mb_convert_kana_option, size_const_type, error_check_types) FROM stdin;
1	1	product_id	商品ID	1	3	1	2014-09-18 10:01:37.125369	2014-09-18 10:01:37.125369	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
2	1	product_class_id	商品規格ID	2	3	1	2014-09-18 10:01:37.125787	2014-09-18 10:01:37.125787	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
3	1	parent_classcategory_id	親規格分類ID	3	2	1	2014-09-18 10:01:37.126239	2014-09-18 10:01:37.126239	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
4	1	classcategory_id	規格分類ID	4	2	1	2014-09-18 10:01:37.126632	2014-09-18 10:01:37.126632	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
5	1	parent_classcategory_name	親規格分類名	5	2	1	2014-09-18 10:01:37.127111	2014-09-18 10:01:37.127111	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
6	1	classcategory_name	規格分類名	6	2	1	2014-09-18 10:01:37.127503	2014-09-18 10:01:37.127503	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
7	1	maker_id	メーカーID	7	1	1	2014-09-18 10:01:37.127979	2014-09-18 10:01:37.127979	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
8	1	(SELECT name as maker_name FROM dtb_maker WHERE prdcls.maker_id = dtb_maker.maker_id) as maker_name	メーカー名	8	2	1	2014-09-18 10:01:37.128371	2014-09-18 10:01:37.128371	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
9	1	name	商品名	9	1	1	2014-09-18 10:01:37.12881	2014-09-18 10:01:37.12881	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
10	1	status	表示ステータス(公開・非公開)	10	1	1	2014-09-18 10:01:37.129281	2014-09-18 10:01:37.129281	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
11	1	comment1	メーカーURL(コメント1)	11	1	1	2014-09-18 10:01:37.129647	2014-09-18 10:01:37.129647	KVa	URL_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,URL_CHECK
12	1	comment2	コメント2	12	1	1	2014-09-18 10:01:37.130143	2014-09-18 10:01:37.130143	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
13	1	comment3	検索ワード(コメント3)	13	1	1	2014-09-18 10:01:37.130581	2014-09-18 10:01:37.130581	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
14	1	comment4	コメント4	14	1	1	2014-09-18 10:01:37.13109	2014-09-18 10:01:37.13109	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
15	1	comment5	コメント5	15	1	1	2014-09-18 10:01:37.131452	2014-09-18 10:01:37.131452	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
16	1	comment6	コメント6	16	1	1	2014-09-18 10:01:37.131897	2014-09-18 10:01:37.131897	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
17	1	note	備考欄(SHOP専用)	17	1	1	2014-09-18 10:01:37.132336	2014-09-18 10:01:37.132336	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
18	1	main_list_comment	一覧-メインコメント	18	1	1	2014-09-18 10:01:37.132727	2014-09-18 10:01:37.132727	KVa	MTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
19	1	main_list_image	一覧-メイン画像	19	1	1	2014-09-18 10:01:37.133194	2014-09-18 10:01:37.133194	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
20	1	main_comment	詳細-メインコメント	20	1	1	2014-09-18 10:01:37.133591	2014-09-18 10:01:37.133591	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK,HTML_TAG_CHECK
21	1	main_image	詳細-メイン画像	21	1	1	2014-09-18 10:01:37.134067	2014-09-18 10:01:37.134067	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
22	1	main_large_image	詳細-メイン拡大画像 	22	1	1	2014-09-18 10:01:37.134472	2014-09-18 10:01:37.134472	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
23	1	sub_title1	詳細-サブタイトル(1)	23	1	1	2014-09-18 10:01:37.134938	2014-09-18 10:01:37.134938	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
24	1	sub_comment1	詳細-サブコメント(1)	24	1	1	2014-09-18 10:01:37.135328	2014-09-18 10:01:37.135328	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,HTML_TAG_CHECK
25	1	sub_image1	詳細-サブ画像(1)	25	1	1	2014-09-18 10:01:37.135735	2014-09-18 10:01:37.135735	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
26	1	sub_large_image1	詳細-サブ拡大画像(1)	26	1	1	2014-09-18 10:01:37.136245	2014-09-18 10:01:37.136245	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
27	1	sub_title2	詳細-サブタイトル(2)	27	1	1	2014-09-18 10:01:37.136634	2014-09-18 10:01:37.136634	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
28	1	sub_comment2	詳細-サブコメント(2)	28	1	1	2014-09-18 10:01:37.137109	2014-09-18 10:01:37.137109	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
29	1	sub_image2	詳細-サブ画像(2)	29	1	1	2014-09-18 10:01:37.137517	2014-09-18 10:01:37.137517	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
30	1	sub_large_image2	詳細-サブ拡大画像(2)	30	1	1	2014-09-18 10:01:37.137964	2014-09-18 10:01:37.137964	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
31	1	sub_title3	詳細-サブタイトル(3)	31	1	1	2014-09-18 10:01:37.13837	2014-09-18 10:01:37.13837	\N	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
32	1	sub_comment3	詳細-サブコメント(3)	32	1	1	2014-09-18 10:01:37.138807	2014-09-18 10:01:37.138807	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
33	1	sub_image3	詳細-サブ画像(3)	33	1	1	2014-09-18 10:01:37.139239	2014-09-18 10:01:37.139239	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
34	1	sub_large_image3	詳細-サブ拡大画像(3)	34	1	1	2014-09-18 10:01:37.139679	2014-09-18 10:01:37.139679	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
35	1	sub_title4	詳細-サブタイトル(4)	35	1	1	2014-09-18 10:01:37.140109	2014-09-18 10:01:37.140109	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
36	1	sub_comment4	詳細-サブコメント(4)	36	1	1	2014-09-18 10:01:37.140543	2014-09-18 10:01:37.140543	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
37	1	sub_image4	詳細-サブ画像(4)	37	1	1	2014-09-18 10:01:37.140983	2014-09-18 10:01:37.140983	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
38	1	sub_large_image4	詳細-サブ拡大画像(4)	38	1	1	2014-09-18 10:01:37.141412	2014-09-18 10:01:37.141412	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
39	1	sub_title5	詳細-サブタイトル(5)	39	1	1	2014-09-18 10:01:37.141849	2014-09-18 10:01:37.141849	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
40	1	sub_comment5	詳細-サブコメント(5)	40	1	1	2014-09-18 10:01:37.142326	2014-09-18 10:01:37.142326	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
41	1	sub_image5	詳細-サブ画像(5)	41	1	1	2014-09-18 10:01:37.142689	2014-09-18 10:01:37.142689	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
42	1	sub_large_image5	詳細-サブ拡大画像(5)	42	1	1	2014-09-18 10:01:37.143152	2014-09-18 10:01:37.143152	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS
43	1	deliv_date_id	発送日目安ID	43	1	1	2014-09-18 10:01:37.143587	2014-09-18 10:01:37.143587	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
44	1	del_flg	削除フラグ	44	1	1	2014-09-18 10:01:37.144022	2014-09-18 10:01:37.144022	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
45	1	product_type_id	商品種別ID	45	1	1	2014-09-18 10:01:37.144455	2014-09-18 10:01:37.144455	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
46	1	product_code	商品コード	46	1	1	2014-09-18 10:01:37.144891	2014-09-18 10:01:37.144891	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
47	1	stock	在庫数	47	1	1	2014-09-18 10:01:37.145325	2014-09-18 10:01:37.145325	n	AMOUNT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
48	1	stock_unlimited	在庫無制限フラグ	48	1	1	2014-09-18 10:01:37.145737	2014-09-18 10:01:37.145737	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
49	1	sale_limit	販売制限数	49	1	1	2014-09-18 10:01:37.146195	2014-09-18 10:01:37.146195	n	AMOUNT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
50	1	price01	通常価格	50	1	1	2014-09-18 10:01:37.146607	2014-09-18 10:01:37.146607	n	PRICE_LEN	NUM_CHECK,MAX_LENGTH_CHECK
51	1	price02	販売価格	51	1	1	2014-09-18 10:01:37.147084	2014-09-18 10:01:37.147084	n	PRICE_LEN	NUM_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
52	1	deliv_fee	送料	52	1	1	2014-09-18 10:01:37.14752	2014-09-18 10:01:37.14752	n	PRICE_LEN	NUM_CHECK,MAX_LENGTH_CHECK
53	1	point_rate	ポイント付与率	53	1	1	2014-09-18 10:01:37.148014	2014-09-18 10:01:37.148014	n	PERCENTAGE_LEN	NUM_CHECK,MAX_LENGTH_CHECK
54	1	down_filename	ダウンロードファイル名	54	1	1	2014-09-18 10:01:37.148388	2014-09-18 10:01:37.148388	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
55	1	down_realfilename	ダウンロード実ファイル	55	1	1	2014-09-18 10:01:37.148823	2014-09-18 10:01:37.148823	\N	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,DOWN_FILE_EXISTS
56	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 0) AS recommend_product_id1	関連商品ID(1)	56	1	1	2014-09-18 10:01:37.149307	2014-09-18 10:01:37.149307	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
57	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 0) AS recommend_comment1	関連商品コメント(1)	57	1	1	2014-09-18 10:01:37.149663	2014-09-18 10:01:37.149663	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
58	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 1) AS recommend_product_id2	関連商品ID(2)	58	1	1	2014-09-18 10:01:37.150167	2014-09-18 10:01:37.150167	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
59	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 1) AS recommend_comment2	関連商品コメント(2)	59	1	1	2014-09-18 10:01:37.150557	2014-09-18 10:01:37.150557	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
60	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 2) AS recommend_product_id3	関連商品ID(3)	60	1	1	2014-09-18 10:01:37.151034	2014-09-18 10:01:37.151034	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
61	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 2) AS recommend_comment3	関連商品コメント(3)	61	1	1	2014-09-18 10:01:37.151428	2014-09-18 10:01:37.151428	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
62	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 3) AS recommend_product_id4	関連商品ID(4)	62	1	1	2014-09-18 10:01:37.151898	2014-09-18 10:01:37.151898	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
63	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 3) AS recommend_comment4	関連商品コメント(4)	63	1	1	2014-09-18 10:01:37.152334	2014-09-18 10:01:37.152334	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
64	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 4) AS recommend_product_id5	関連商品ID(5)	64	1	1	2014-09-18 10:01:37.152705	2014-09-18 10:01:37.152705	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
65	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 4) AS recommend_comment5	関連商品コメント(5)	65	1	1	2014-09-18 10:01:37.153209	2014-09-18 10:01:37.153209	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
66	1	(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 5) AS recommend_product_id6	関連商品ID(6)	66	1	1	2014-09-18 10:01:37.153597	2014-09-18 10:01:37.153597	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
67	1	(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 5) AS recommend_comment6	関連商品コメント(6)	67	1	1	2014-09-18 10:01:37.154075	2014-09-18 10:01:37.154075	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
68	1	(SELECT ARRAY_TO_STRING(ARRAY(SELECT product_status_id FROM dtb_product_status WHERE dtb_product_status.product_id = prdcls.product_id and del_flg = 0 ORDER BY dtb_product_status.product_status_id), ',')) as product_statuses	商品ステータス	68	1	1	2014-09-18 10:01:37.154467	2014-09-18 10:01:37.154467	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
69	1	(SELECT ARRAY_TO_STRING(ARRAY(SELECT name FROM dtb_product_status LEFT JOIN mtb_status ON  dtb_product_status.product_status_id = mtb_status.id  WHERE dtb_product_status.product_id = prdcls.product_id and del_flg = 0 ORDER BY dtb_product_status.product_status_id), ',')) as product_status_names	商品ステータス名	69	2	1	2014-09-18 10:01:37.154905	2014-09-18 10:01:37.154905	KVa	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
70	1	(SELECT ARRAY_TO_STRING(ARRAY(SELECT category_id FROM dtb_product_categories WHERE dtb_product_categories.product_id = prdcls.product_id ORDER BY dtb_product_categories.rank), ',')) as category_ids	カテゴリID	70	1	1	2014-09-18 10:01:37.155339	2014-09-18 10:01:37.155339	KVa	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
71	1	(SELECT ARRAY_TO_STRING(ARRAY(SELECT category_name FROM dtb_product_categories LEFT JOIN dtb_category ON dtb_product_categories.category_id = dtb_category.category_id WHERE dtb_product_categories.product_id = prdcls.product_id ORDER BY dtb_product_categories.rank), ',')) as category_names	カテゴリ名	71	2	1	2014-09-18 10:01:37.15576	2014-09-18 10:01:37.15576	KVa	LTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
72	2	customer_id	会員ID	1	1	1	2014-09-18 10:01:37.156217	2014-09-18 10:01:37.156217	\N	\N	\N
73	2	name01	お名前(姓)	2	1	1	2014-09-18 10:01:37.156663	2014-09-18 10:01:37.156663	\N	\N	\N
74	2	name02	お名前(名)	3	1	1	2014-09-18 10:01:37.157077	2014-09-18 10:01:37.157077	\N	\N	\N
75	2	kana01	お名前(フリガナ・姓)	4	1	1	2014-09-18 10:01:37.157512	2014-09-18 10:01:37.157512	\N	\N	\N
76	2	kana02	お名前(フリガナ・名)	5	1	1	2014-09-18 10:01:37.157947	2014-09-18 10:01:37.157947	\N	\N	\N
77	2	company_name	会社名	6	1	1	2014-09-18 10:01:37.158385	2014-09-18 10:01:37.158385	KVa	\N	\N
78	2	zip01	郵便番号1	7	1	1	2014-09-18 10:01:37.158817	2014-09-18 10:01:37.158817	\N	\N	\N
79	2	zip02	郵便番号2	8	1	1	2014-09-18 10:01:37.15925	2014-09-18 10:01:37.15925	\N	\N	\N
80	2	(SELECT name FROM mtb_pref WHERE mtb_pref.id = dtb_customer.pref) as pref	都道府県	9	1	1	2014-09-18 10:01:37.159692	2014-09-18 10:01:37.159692	\N	\N	\N
81	2	addr01	住所1	10	1	1	2014-09-18 10:01:37.160123	2014-09-18 10:01:37.160123	\N	\N	\N
82	2	addr02	住所2	11	1	1	2014-09-18 10:01:37.160558	2014-09-18 10:01:37.160558	\N	\N	\N
83	2	email	E-MAIL	12	1	1	2014-09-18 10:01:37.160991	2014-09-18 10:01:37.160991	\N	\N	\N
84	2	tel01	TEL1	13	1	1	2014-09-18 10:01:37.161424	2014-09-18 10:01:37.161424	\N	\N	\N
85	2	tel02	TEL2	14	1	1	2014-09-18 10:01:37.16186	2014-09-18 10:01:37.16186	\N	\N	\N
86	2	tel03	TEL3	15	1	1	2014-09-18 10:01:37.162294	2014-09-18 10:01:37.162294	\N	\N	\N
87	2	fax01	FAX1	16	1	1	2014-09-18 10:01:37.162701	2014-09-18 10:01:37.162701	\N	\N	\N
88	2	fax02	FAX2	17	1	1	2014-09-18 10:01:37.163164	2014-09-18 10:01:37.163164	\N	\N	\N
89	2	fax03	FAX3	18	1	1	2014-09-18 10:01:37.163602	2014-09-18 10:01:37.163602	\N	\N	\N
90	2	(SELECT name FROM mtb_sex WHERE mtb_sex.id = dtb_customer.sex) as sex	性別	19	1	1	2014-09-18 10:01:37.164033	2014-09-18 10:01:37.164033	\N	\N	\N
91	2	(SELECT name FROM mtb_job WHERE mtb_job.id = dtb_customer.job) as job	職業	20	1	1	2014-09-18 10:01:37.164467	2014-09-18 10:01:37.164467	\N	\N	\N
92	2	birth	誕生日	21	1	1	2014-09-18 10:01:37.164904	2014-09-18 10:01:37.164904	\N	\N	\N
93	2	first_buy_date	初回購入日	22	1	1	2014-09-18 10:01:37.165338	2014-09-18 10:01:37.165338	\N	\N	\N
94	2	last_buy_date	最終購入日	23	1	1	2014-09-18 10:01:37.16576	2014-09-18 10:01:37.16576	\N	\N	\N
95	2	buy_times	購入回数	24	1	1	2014-09-18 10:01:37.166204	2014-09-18 10:01:37.166204	\N	\N	\N
96	2	point	ポイント残高	25	1	1	2014-09-18 10:01:37.166642	2014-09-18 10:01:37.166642	\N	\N	\N
97	2	note	備考	26	1	1	2014-09-18 10:01:37.167076	2014-09-18 10:01:37.167076	\N	\N	\N
98	2	create_date	登録日	27	1	1	2014-09-18 10:01:37.167507	2014-09-18 10:01:37.167507	\N	\N	\N
99	2	update_date	更新日	28	1	1	2014-09-18 10:01:37.167948	2014-09-18 10:01:37.167948	\N	\N	\N
100	3	order_id	注文番号	1	3	1	2014-09-18 10:01:37.168381	2014-09-18 10:01:37.168381	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
101	3	customer_id	会員ID	2	1	1	2014-09-18 10:01:37.168817	2014-09-18 10:01:37.168817	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
102	3	message	要望等	3	1	1	2014-09-18 10:01:37.169249	2014-09-18 10:01:37.169249	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
103	3	order_name01	お名前(姓)	4	1	1	2014-09-18 10:01:37.16969	2014-09-18 10:01:37.16969	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
104	3	order_name02	お名前(名)	5	1	1	2014-09-18 10:01:37.170149	2014-09-18 10:01:37.170149	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
105	3	order_kana01	お名前(フリガナ・姓)	6	1	1	2014-09-18 10:01:37.170571	2014-09-18 10:01:37.170571	KVCa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
106	3	order_kana02	お名前(フリガナ名)	7	1	1	2014-09-18 10:01:37.170988	2014-09-18 10:01:37.170988	KVCa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
107	3	order_company_name	会社名	8	1	1	2014-09-18 10:01:37.171422	2014-09-18 10:01:37.171422	KVa	\N	\N
108	3	order_email	メールアドレス	9	1	1	2014-09-18 10:01:37.171858	2014-09-18 10:01:37.171858	a	null	NO_SPTAB,EMAIL_CHECK,EMAIL_CHAR_CHECK
109	3	order_tel01	電話番号1	10	1	1	2014-09-18 10:01:37.172292	2014-09-18 10:01:37.172292	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
110	3	order_tel02	電話番号2	11	1	1	2014-09-18 10:01:37.172699	2014-09-18 10:01:37.172699	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
111	3	order_tel03	電話番号3	12	1	1	2014-09-18 10:01:37.173163	2014-09-18 10:01:37.173163	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
112	3	order_fax01	FAX1	13	1	1	2014-09-18 10:01:37.173598	2014-09-18 10:01:37.173598	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
113	3	order_fax02	FAX2	14	1	1	2014-09-18 10:01:37.174035	2014-09-18 10:01:37.174035	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
114	3	order_fax03	FAX3	15	1	1	2014-09-18 10:01:37.174465	2014-09-18 10:01:37.174465	n	TEL_ITEM_LEN	MAX_LENGTH_CHECK,NUM_CHECK
115	3	order_zip01	郵便番号1	16	1	1	2014-09-18 10:01:37.174904	2014-09-18 10:01:37.174904	n	ZIP01_LEN	MAX_LENGTH_CHECK,NUM_CHECK,NUM_COUNT_CHECK
116	3	order_zip02	郵便番号2	17	1	1	2014-09-18 10:01:37.175342	2014-09-18 10:01:37.175342	n	ZIP02_LEN	MAX_LENGTH_CHECK,NUM_CHECK,NUM_COUNT_CHECK
117	3	(SELECT name FROM mtb_pref WHERE mtb_pref.id = dtb_order.order_pref) as pref	都道府県	18	2	1	2014-09-18 10:01:37.175745	2014-09-18 10:01:37.175745	n	INT_LEN	MAX_LENGTH_CHECK,NUM_CHECK
118	3	order_addr01	住所1	19	1	1	2014-09-18 10:01:37.176206	2014-09-18 10:01:37.176206	KVa	MTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,NUM_CHECK
119	3	order_addr02	住所2	20	1	1	2014-09-18 10:01:37.176641	2014-09-18 10:01:37.176641	KVa	MTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,NUM_CHECK
120	3	order_sex	性別	21	1	1	2014-09-18 10:01:37.177074	2014-09-18 10:01:37.177074	n	INT_LEN	MAX_LENGTH_CHECK,NUM_CHECK
121	3	order_birth	生年月日	22	1	1	2014-09-18 10:01:37.177508	2014-09-18 10:01:37.177508	n	INT_LEN	MAX_LENGTH_CHECK,NUM_CHECK
122	3	order_job	職種	23	1	1	2014-09-18 10:01:37.177942	2014-09-18 10:01:37.177942	n	INT_LEN	MAX_LENGTH_CHECK,NUM_CHECK
123	3	subtotal	小計	38	1	1	2014-09-18 10:01:37.178375	2014-09-18 10:01:37.178375	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
124	3	discount	値引き	39	1	1	2014-09-18 10:01:37.178812	2014-09-18 10:01:37.178812	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
125	3	deliv_fee	送料	40	1	1	2014-09-18 10:01:37.179263	2014-09-18 10:01:37.179263	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
126	3	charge	手数料	41	1	1	2014-09-18 10:01:37.179778	2014-09-18 10:01:37.179778	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
127	3	use_point	使用ポイント	42	1	1	2014-09-18 10:01:37.180123	2014-09-18 10:01:37.180123	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
128	3	add_point	加算ポイント	43	1	1	2014-09-18 10:01:37.180552	2014-09-18 10:01:37.180552	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
129	3	tax	税金	44	1	1	2014-09-18 10:01:37.180987	2014-09-18 10:01:37.180987	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
130	3	total	合計	45	1	1	2014-09-18 10:01:37.181422	2014-09-18 10:01:37.181422	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
131	3	payment_total	お支払い合計	46	1	1	2014-09-18 10:01:37.181856	2014-09-18 10:01:37.181856	n	PRICE_LEN	MAX_LENGTH_CHECK,NUM_CHECK
132	3	deliv_id	配送業者ID	47	2	1	2014-09-18 10:01:37.18229	2014-09-18 10:01:37.18229	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
133	3	payment_method	支払い方法	48	2	1	2014-09-18 10:01:37.182701	2014-09-18 10:01:37.182701	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
134	3	note	SHOPメモ	50	2	1	2014-09-18 10:01:37.183176	2014-09-18 10:01:37.183176	KVa	LLTEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
135	3	status	対応状況	51	1	1	2014-09-18 10:01:37.183593	2014-09-18 10:01:37.183593	KVa	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
136	3	create_date	注文日時	52	1	1	2014-09-18 10:01:37.18403	2014-09-18 10:01:37.18403	a		CHECK_DATE
137	3	update_date	更新日時	53	1	1	2014-09-18 10:01:37.184464	2014-09-18 10:01:37.184464	a		CHECK_DATE
138	3	commit_date	発送完了日時	54	1	1	2014-09-18 10:01:37.184902	2014-09-18 10:01:37.184902	a		CHECK_DATE
139	3	device_type_id	端末種別ID	55	1	1	2014-09-18 10:01:37.185336	2014-09-18 10:01:37.185336	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
140	3	(SELECT COUNT(shipping_id) as shipping_target_num FROM dtb_shipping WHERE dtb_shipping.order_id = dtb_order.order_id) as shipping_num	配送先数	56	1	1	2014-09-18 10:01:37.185741	2014-09-18 10:01:37.185741	n	INT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
141	3	(SELECT ARRAY_TO_STRING(ARRAY(SELECT shipping_id FROM dtb_shipping WHERE dtb_shipping.order_id = dtb_order.order_id), ',')) as shipping_ids	配送情報ID	57	1	1	2014-09-18 10:01:37.186203	2014-09-18 10:01:37.186203	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK
142	4	B.name	商品名	1	2	1	2014-09-18 10:01:37.18664	2014-09-18 10:01:37.18664	KVa	STEXT_LEN	MAX_LENGTH_CHECK
143	4	(SELECT name FROM mtb_disp WHERE mtb_disp.id = A.status) as status	レビュー表示	2	1	1	2014-09-18 10:01:37.187072	2014-09-18 10:01:37.187072	KVa	STEXT_LEN	MAX_LENGTH_CHECK
144	4	A.create_date	投稿日	3	1	1	2014-09-18 10:01:37.187506	2014-09-18 10:01:37.187506	a		CHECK_DATE,EXIST_CHECK
145	4	A.reviewer_name	投稿者名	4	1	1	2014-09-18 10:01:37.187941	2014-09-18 10:01:37.187941	KVa	STEXT_LEN	MAX_LENGTH_CHECK
146	4	A.reviewer_url	投稿者URL	5	1	1	2014-09-18 10:01:37.188377	2014-09-18 10:01:37.188377	KVas	STEXT_LEN	MAX_LENGTH_CHECK
147	4	(SELECT name FROM mtb_sex WHERE mtb_sex.id = A.sex) as sex	性別	6	1	1	2014-09-18 10:01:37.18881	2014-09-18 10:01:37.18881	KVa	STEXT_LEN	MAX_LENGTH_CHECK
148	4	(SELECT name FROM mtb_recommend WHERE mtb_recommend.id = A.recommend_level) as recommend_level	おすすめレベル	7	1	1	2014-09-18 10:01:37.189245	2014-09-18 10:01:37.189245	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
149	4	A.title	タイトル	8	1	1	2014-09-18 10:01:37.18969	2014-09-18 10:01:37.18969	KVa	STEXT_LEN	MAX_LENGTH_CHECK
150	4	A.comment	コメント	9	1	1	2014-09-18 10:01:37.190117	2014-09-18 10:01:37.190117	KVa	LTEXT_LEN	MAX_LENGTH_CHECK
151	5	category_id	カテゴリID	1	3	1	2014-09-18 10:01:37.19055	2014-09-18 10:01:37.19055	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
152	5	category_name	カテゴリ名	2	1	1	2014-09-18 10:01:37.190984	2014-09-18 10:01:37.190984	KVa	STEXT_LEN	SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK
153	5	parent_category_id	親カテゴリID	3	1	1	2014-09-18 10:01:37.191418	2014-09-18 10:01:37.191418	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
154	5	level	階層	\N	2	2	2014-09-18 10:01:37.191859	2014-09-18 10:01:37.191859	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
155	5	rank	表示ランク	\N	2	2	2014-09-18 10:01:37.192288	2014-09-18 10:01:37.192288	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
156	5	del_flg	削除フラグ	\N	1	2	2014-09-18 10:01:37.192696	2014-09-18 10:01:37.192696	n	INT_LEN	NUM_CHECK,MAX_LENGTH_CHECK
\.


--
-- Name: dtb_csv_no_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_csv_no_seq', 157, false);


--
-- Data for Name: dtb_csv_sql; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_csv_sql (sql_id, sql_name, csv_sql, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_csv_sql_sql_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_csv_sql_sql_id_seq', 1, false);


--
-- Data for Name: dtb_customer; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_customer (customer_id, name01, name02, kana01, kana02, company_name, zip01, zip02, zipcode, country_id, pref, addr01, addr02, email, email_mobile, tel01, tel02, tel03, fax01, fax02, fax03, sex, job, birth, password, reminder, reminder_answer, salt, secret_key, first_buy_date, last_buy_date, buy_times, buy_total, point, note, status, create_date, update_date, del_flg, mobile_phone_id, mailmaga_flg) FROM stdin;
1	試験	太郎	シケン	タロウ	\N	100	0001	\N	392	3	代田区神田神保町	1-3-5	test@example.com	\N	0120	123	456	\N	\N	\N	1	\N	1901-01-01 00:00:00	4cc377ee1a08ed679034cbea33199055355fc915e40816bc0b85cd674f02306f	1	ec729f5a1ce8d1aabb79377a955bb7108fa391da8e12389852b824a5bdd29fee	biatrulouh	r540860ecc54d67bcRBAdp	\N	\N	0	0	0	\N	2	2014-09-04 12:54:04	2014-09-18 10:21:03.830784	0	\N	3
\.


--
-- Name: dtb_customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_customer_customer_id_seq', 1, false);


--
-- Data for Name: dtb_customer_favorite_products; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_customer_favorite_products (customer_id, product_id, create_date, update_date) FROM stdin;
\.


--
-- Data for Name: dtb_deliv; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_deliv (deliv_id, product_type_id, name, service_name, remark, confirm_url, rank, status, del_flg, creator_id, create_date, update_date) FROM stdin;
1	1	サンプル業者	サンプル業者	\N	\N	2	1	0	2	2014-09-18 10:01:37.193161	2014-09-18 10:01:37.193161
2	2	配送無し(ダウンロード商品用)	なし	\N	\N	1	1	0	2	2014-09-18 10:01:37.193594	2014-09-18 10:01:37.193594
\.


--
-- Name: dtb_deliv_deliv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_deliv_deliv_id_seq', 3, false);


--
-- Data for Name: dtb_delivfee; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_delivfee (deliv_id, fee_id, fee, pref) FROM stdin;
1	1	1000	1
1	2	1000	2
1	3	1000	3
1	4	1000	4
1	5	1000	5
1	6	1000	6
1	7	1000	7
1	8	1000	8
1	9	1000	9
1	10	1000	10
1	11	1000	11
1	12	1000	12
1	13	1000	13
1	14	1000	14
1	15	1000	15
1	16	1000	16
1	17	1000	17
1	18	1000	18
1	19	1000	19
1	20	1000	20
1	21	1000	21
1	22	1000	22
1	23	1000	23
1	24	1000	24
1	25	1000	25
1	26	1000	26
1	27	1000	27
1	28	1000	28
1	29	1000	29
1	30	1000	30
1	31	1000	31
1	32	1000	32
1	33	1000	33
1	34	1000	34
1	35	1000	35
1	36	1000	36
1	37	1000	37
1	38	1000	38
1	39	1000	39
1	40	1000	40
1	41	1000	41
1	42	1000	42
1	43	1000	43
1	44	1000	44
1	45	1000	45
1	46	1000	46
1	47	1000	47
2	1	0	1
2	2	0	2
2	3	0	3
2	4	0	4
2	5	0	5
2	6	0	6
2	7	0	7
2	8	0	8
2	9	0	9
2	10	0	10
2	11	0	11
2	12	0	12
2	13	0	13
2	14	0	14
2	15	0	15
2	16	0	16
2	17	0	17
2	18	0	18
2	19	0	19
2	20	0	20
2	21	0	21
2	22	0	22
2	23	0	23
2	24	0	24
2	25	0	25
2	26	0	26
2	27	0	27
2	28	0	28
2	29	0	29
2	30	0	30
2	31	0	31
2	32	0	32
2	33	0	33
2	34	0	34
2	35	0	35
2	36	0	36
2	37	0	37
2	38	0	38
2	39	0	39
2	40	0	40
2	41	0	41
2	42	0	42
2	43	0	43
2	44	0	44
2	45	0	45
2	46	0	46
2	47	0	47
\.


--
-- Data for Name: dtb_delivtime; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_delivtime (deliv_id, time_id, deliv_time) FROM stdin;
1	1	午前
1	2	午後
\.


--
-- Data for Name: dtb_holiday; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_holiday (holiday_id, title, month, day, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
1	元日(1月1日)	1	1	100	0	2014-09-18 10:01:37.237984	2014-09-18 10:01:37.237984	0
2	成人の日(1月第2月曜日)	1	14	99	0	2014-09-18 10:01:37.23842	2014-09-18 10:01:37.23842	0
3	建国記念の日(2月11日)	2	11	98	0	2014-09-18 10:01:37.238854	2014-09-18 10:01:37.238854	0
4	春分の日(3月21日)	3	21	97	0	2014-09-18 10:01:37.239288	2014-09-18 10:01:37.239288	0
5	昭和の日(4月29日)	4	29	96	0	2014-09-18 10:01:37.239694	2014-09-18 10:01:37.239694	0
6	憲法記念日(5月3日)	5	3	95	0	2014-09-18 10:01:37.240157	2014-09-18 10:01:37.240157	0
7	みどりの日(5月4日)	5	4	94	0	2014-09-18 10:01:37.240592	2014-09-18 10:01:37.240592	0
8	こどもの日(5月5日)	5	5	93	0	2014-09-18 10:01:37.241027	2014-09-18 10:01:37.241027	0
9	海の日(7月第3月曜日)	7	21	92	0	2014-09-18 10:01:37.241461	2014-09-18 10:01:37.241461	0
10	敬老の日(9月第3月曜日)	9	15	91	0	2014-09-18 10:01:37.241897	2014-09-18 10:01:37.241897	0
11	秋分の日(9月23日)	9	23	90	0	2014-09-18 10:01:37.242361	2014-09-18 10:01:37.242361	0
12	体育の日(10月第2月曜日)	10	13	89	0	2014-09-18 10:01:37.242792	2014-09-18 10:01:37.242792	0
13	文化の日(11月3日)	11	3	88	0	2014-09-18 10:01:37.243299	2014-09-18 10:01:37.243299	0
14	勤労感謝の日(11月23日)	11	23	87	0	2014-09-18 10:01:37.243666	2014-09-18 10:01:37.243666	0
15	天皇誕生日(12月23日)	12	23	86	0	2014-09-18 10:01:37.244124	2014-09-18 10:01:37.244124	0
\.


--
-- Name: dtb_holiday_holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_holiday_holiday_id_seq', 16, false);


--
-- Data for Name: dtb_index_list; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_index_list (table_name, column_name, recommend_flg, recommend_comment) FROM stdin;
dtb_customer	email_mobile	0	会員数増加時のログイン処理速度を向上させたいときに試してみてください
dtb_products	name	2	商品名検索速度を向上させたいときに試してみてください
dtb_order_temp	order_temp_id	0	注文数が多いときに試してみてください。
dtb_order	status	2	注文数が多いときに試してみてください。
dtb_order	order_email	2	注文数が多いときに試してみてください。
dtb_order	order_name01	2	注文数が多いときに試してみてください。
dtb_order	order_name02	0	注文数が多いときに試してみてください。
dtb_order	order_tel01	0	注文数が多いときに試してみてください。
dtb_order	order_tel02	0	注文数が多いときに試してみてください。
dtb_order	order_tel03	0	注文数が多いときに試してみてください。
dtb_customer	mobile_phone_id	1	""
dtb_products_class	product_id	1	""
dtb_order_detail	product_id	1	""
dtb_send_customer	customer_id	1	""
dtb_mobile_ext_session_id	param_key	1	""
dtb_mobile_ext_session_id	param_value	1	""
dtb_mobile_ext_session_id	url	1	""
dtb_mobile_ext_session_id	create_date	1	""
dtb_mobile_kara_mail	token	1	""
dtb_mobile_kara_mail	create_date	1	""
dtb_mobile_kara_mail	receive_date	1	""
dtb_product_categories	category_id	2	カテゴリが多いときに試してみてください。
mtb_zip	zipcode	2	郵便番号検索が遅いときに試してみてください。郵便番号データの更新時には無効にしていることをおすすめします。
\.


--
-- Data for Name: dtb_kiyaku; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_kiyaku (kiyaku_id, kiyaku_title, kiyaku_text, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
1	第1条 (会員)	1. 「会員」とは、当社が定める手続に従い本規約に同意の上、入会の申し込みを行う個人をいいます。\n2. 「会員情報」とは、会員が当社に開示した会員の属性に関する情報および会員の取引に関する履歴等の情報をいいます。\n3. 本規約は、全ての会員に適用され、登録手続時および登録後にお守りいただく規約です。	12	0	2014-09-18 10:01:37.244532	2014-09-18 10:01:37.244532	0
2	第2条 (登録)	1. 会員資格\n本規約に同意の上、所定の入会申込みをされたお客様は、所定の登録手続完了後に会員としての資格を有します。会員登録手続は、会員となるご本人が行ってください。代理による登録は一切認められません。なお、過去に会員資格が取り消された方やその他当社が相応しくないと判断した方からの会員申込はお断りする場合があります。\n\n2. 会員情報の入力\n会員登録手続の際には、入力上の注意をよく読み、所定の入力フォームに必要事項を正確に入力してください。会員情報の登録において、特殊記号・旧漢字・ローマ数字などはご使用になれません。これらの文字が登録された場合は当社にて変更致します。\n\n3. パスワードの管理\n(1)パスワードは会員本人のみが利用できるものとし、第三者に譲渡・貸与できないものとします。\n(2)パスワードは、他人に知られることがないよう定期的に変更する等、会員本人が責任をもって管理してください。\n(3)パスワードを用いて当社に対して行われた意思表示は、会員本人の意思表示とみなし、そのために生じる支払等は全て会員の責任となります。	11	0	2014-09-18 10:01:37.24501	2014-09-18 10:01:37.24501	0
3	第3条 (変更)	1. 会員は、氏名、住所など当社に届け出た事項に変更があった場合には、速やかに当社に連絡するものとします。\n2. 変更登録がなされなかったことにより生じた損害について、当社は一切責任を負いません。また、変更登録がなされた場合でも、変更登録前にすでに手続がなされた取引は、変更登録前の情報に基づいて行われますのでご注意ください。	10	0	2014-09-18 10:01:37.245427	2014-09-18 10:01:37.245427	0
4	第4条 (退会)	会員が退会を希望する場合には、会員本人が退会手続きを行ってください。所定の退会手続の終了後に、退会となります。	9	0	2014-09-18 10:01:37.245864	2014-09-18 10:01:37.245864	0
5	第5条 (会員資格の喪失及び賠償義務)	1. 会員が、会員資格取得申込の際に虚偽の申告をしたとき、通信販売による代金支払債務を怠ったとき、その他当社が会員として不適当と認める事由があるときは、当社は、会員資格を取り消すことができることとします。\n2. 会員が、以下の各号に定める行為をしたときは、これにより当社が被った損害を賠償する責任を負います。\n(1)会員番号、パスワードを不正に使用すること\n(2)当ホームページにアクセスして情報を改ざんしたり、当ホームページに有害なコンピュータープログラムを送信するなどして、当社の営業を妨害すること\n(3)当社が扱う商品の知的所有権を侵害する行為をすること\n(4)その他、この利用規約に反する行為をすること	8	0	2014-09-18 10:01:37.246294	2014-09-18 10:01:37.246294	0
6	第6条 (会員情報の取扱い)	1. 当社は、原則として会員情報を会員の事前の同意なく第三者に対して開示することはありません。ただし、次の各号の場合には、会員の事前の同意なく、当社は会員情報その他のお客様情報を開示できるものとします。\n(1)法令に基づき開示を求められた場合\n(2)当社の権利、利益、名誉等を保護するために必要であると当社が判断した場合\n2. 会員情報につきましては、当社の「個人情報保護への取組み」に従い、当社が管理します。当社は、会員情報を、会員へのサービス提供、サービス内容の向上、サービスの利用促進、およびサービスの健全かつ円滑な運営の確保を図る目的のために、当社おいて利用することができるものとします。\n3. 当社は、会員に対して、メールマガジンその他の方法による情報提供(広告を含みます)を行うことができるものとします。会員が情報提供を希望しない場合は、当社所定の方法に従い、その旨を通知して頂ければ、情報提供を停止します。ただし、本サービス運営に必要な情報提供につきましては、会員の希望により停止をすることはできません。	7	0	2014-09-18 10:01:37.246806	2014-09-18 10:01:37.246806	0
7	第7条 (禁止事項)	本サービスの利用に際して、会員に対し次の各号の行為を行うことを禁止します。\n\n1. 法令または本規約、本サービスご利用上のご注意、本サービスでのお買い物上のご注意その他の本規約等に違反すること\n2. 当社、およびその他の第三者の権利、利益、名誉等を損ねること\n3. 青少年の心身に悪影響を及ぼす恐れがある行為、その他公序良俗に反する行為を行うこと\n4. 他の利用者その他の第三者に迷惑となる行為や不快感を抱かせる行為を行うこと\n5. 虚偽の情報を入力すること\n6. 有害なコンピュータープログラム、メール等を送信または書き込むこと\n7. 当社のサーバーその他のコンピューターに不正にアクセスすること\n8. パスワードを第三者に貸与・譲渡すること、または第三者と共用すること\n9. その他当社が不適切と判断すること	6	0	2014-09-18 10:01:37.247221	2014-09-18 10:01:37.247221	0
8	第8条 (サービスの中断・停止等)	1. 当社は、本サービスの稼動状態を良好に保つために、次の各号の一に該当する場合、予告なしに、本サービスの提供全てあるいは一部を停止することがあります。\n(1)システムの定期保守および緊急保守のために必要な場合\n(2)システムに負荷が集中した場合\n(3)火災、停電、第三者による妨害行為などによりシステムの運用が困難になった場合\n(4)その他、止むを得ずシステムの停止が必要と当社が判断した場合	5	0	2014-09-18 10:01:37.247658	2014-09-18 10:01:37.247658	0
9	第9条 (サービスの変更・廃止)	当社は、その判断によりサービスの全部または一部を事前の通知なく、適宜変更・廃止できるものとします。	4	0	2014-09-18 10:01:37.248081	2014-09-18 10:01:37.248081	0
10	第10条 (免責)	1. 通信回線やコンピューターなどの障害によるシステムの中断・遅滞・中止・データの消失、データへの不正アクセスにより生じた損害、その他当社のサービスに関して会員に生じた損害について、当社は一切責任を負わないものとします。\n2. 当社は、当社のウェブページ・サーバー・ドメインなどから送られるメール・コンテンツに、コンピューター・ウィルスなどの有害なものが含まれていないことを保証いたしません。\n3. 会員が本規約等に違反したことによって生じた損害については、当社は一切責任を負いません。	3	0	2014-09-18 10:01:37.248509	2014-09-18 10:01:37.248509	0
11	第11条 (本規約の改定)	当社は、本規約を任意に改定できるものとし、また、当社において本規約を補充する規約(以下「補充規約」といいます)を定めることができます。本規約の改定または補充は、改定後の本規約または補充規約を当社所定のサイトに掲示したときにその効力を生じるものとします。この場合、会員は、改定後の規約および補充規約に従うものと致します。	2	0	2014-09-18 10:01:37.248959	2014-09-18 10:01:37.248959	0
12	第12条 (準拠法、管轄裁判所)	本規約に関して紛争が生じた場合、当社本店所在地を管轄する地方裁判所を第一審の専属的合意管轄裁判所とします。 	1	0	2014-09-18 10:01:37.249381	2014-09-18 10:01:37.249381	0
\.


--
-- Name: dtb_kiyaku_kiyaku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_kiyaku_kiyaku_id_seq', 13, false);


--
-- Data for Name: dtb_mail_history; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_mail_history (send_id, order_id, send_date, template_id, creator_id, subject, mail_body) FROM stdin;
\.


--
-- Name: dtb_mail_history_send_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_mail_history_send_id_seq', 1, false);


--
-- Data for Name: dtb_mailmaga_template; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_mailmaga_template (template_id, subject, mail_method, body, del_flg, creator_id, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_mailmaga_template_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_mailmaga_template_template_id_seq', 1, false);


--
-- Data for Name: dtb_mailtemplate; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_mailtemplate (template_id, subject, header, footer, creator_id, del_flg, create_date, update_date) FROM stdin;
1	ご注文ありがとうございます	この度はご注文いただき誠にありがとうございます。\n下記ご注文内容にお間違えがないかご確認下さい。\n\n	\n============================================\n\n\nこのメッセージはお客様へのお知らせ専用ですので、\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\nご了承ください。\n\nご質問やご不明な点がございましたら、こちらからお願いいたします。\n\n	0	0	2014-09-18 10:01:37.249774	2014-09-18 10:01:37.249774
5	お問い合わせを受け付けました	\N	\N	0	0	2014-09-18 10:01:37.250294	2014-09-18 10:01:37.250294
\.


--
-- Data for Name: dtb_maker; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_maker (maker_id, name, rank, creator_id, create_date, update_date, del_flg) FROM stdin;
\.


--
-- Data for Name: dtb_maker_count; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_maker_count (maker_id, product_count, create_date) FROM stdin;
\.


--
-- Name: dtb_maker_maker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_maker_maker_id_seq', 1, false);


--
-- Data for Name: dtb_member; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_member (member_id, name, department, login_id, password, salt, authority, rank, work, del_flg, creator_id, create_date, update_date, login_date) FROM stdin;
1	dummy	\N	dummy	dummy	dummy	0	0	1	1	0	2014-09-18 10:01:37.25066	2014-09-18 10:01:37.25066	\N
2	管理者	\N	admin	86d9c952e9e3fc9881a18abe55781206fb61e6fb73cbf9943d6e8ca8c0dbf275	triagasust	0	1	1	0	0	2014-09-18 10:12:58.0857	2014-09-18 10:12:58.0857	2014-09-18 10:19:29
\.


--
-- Name: dtb_member_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_member_member_id_seq', 2, true);


--
-- Data for Name: dtb_mobile_ext_session_id; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_mobile_ext_session_id (session_id, param_key, param_value, url, create_date) FROM stdin;
\.


--
-- Data for Name: dtb_module; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_module (module_id, module_code, module_name, sub_data, auto_update_flg, del_flg, create_date, update_date) FROM stdin;
0	0	patch	\N	0	0	2014-09-18 10:01:37.251156	2014-09-18 10:01:37.251156
\.


--
-- Data for Name: dtb_module_update_logs; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_module_update_logs (log_id, module_id, buckup_path, error_flg, error, ok, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_module_update_logs_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_module_update_logs_log_id_seq', 1, false);


--
-- Data for Name: dtb_news; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_news (news_id, news_date, rank, news_title, news_comment, news_url, news_select, link_method, creator_id, create_date, update_date, del_flg) FROM stdin;
1	2014-09-18 10:01:37.25153	1	サイトオープンいたしました!	一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！	\N	0	\N	1	2014-09-18 10:01:37.25153	2014-09-18 10:01:37.25153	0
\.


--
-- Name: dtb_news_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_news_news_id_seq', 2, false);


--
-- Data for Name: dtb_order; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_order (order_id, order_temp_id, customer_id, message, order_name01, order_name02, order_kana01, order_kana02, order_company_name, order_email, order_tel01, order_tel02, order_tel03, order_fax01, order_fax02, order_fax03, order_zip01, order_zip02, order_zipcode, order_country_id, order_pref, order_addr01, order_addr02, order_sex, order_birth, order_job, subtotal, discount, deliv_id, deliv_fee, charge, use_point, add_point, birth_point, tax, total, payment_total, payment_id, payment_method, note, status, create_date, update_date, commit_date, payment_date, device_type_id, del_flg, memo01, memo02, memo03, memo04, memo05, memo06, memo07, memo08, memo09, memo10) FROM stdin;
\.


--
-- Data for Name: dtb_order_detail; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_order_detail (order_detail_id, order_id, product_id, product_class_id, product_name, product_code, classcategory_name1, classcategory_name2, price, quantity, point_rate, tax_rate, tax_rule) FROM stdin;
\.


--
-- Name: dtb_order_detail_order_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_order_detail_order_detail_id_seq', 1, false);


--
-- Name: dtb_order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_order_order_id_seq', 1, false);


--
-- Data for Name: dtb_order_temp; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_order_temp (order_temp_id, customer_id, message, order_name01, order_name02, order_kana01, order_kana02, order_company_name, order_email, order_tel01, order_tel02, order_tel03, order_fax01, order_fax02, order_fax03, order_zip01, order_zip02, order_zipcode, order_country_id, order_pref, order_addr01, order_addr02, order_sex, order_birth, order_job, subtotal, discount, deliv_id, deliv_fee, charge, use_point, add_point, birth_point, tax, total, payment_total, payment_id, payment_method, note, mail_flag, status, deliv_check, point_check, create_date, update_date, device_type_id, del_flg, order_id, memo01, memo02, memo03, memo04, memo05, memo06, memo07, memo08, memo09, memo10, session) FROM stdin;
\.


--
-- Data for Name: dtb_other_deliv; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_other_deliv (other_deliv_id, customer_id, name01, name02, kana01, kana02, company_name, zip01, zip02, zipcode, country_id, pref, addr01, addr02, tel01, tel02, tel03, fax01, fax02, fax03) FROM stdin;
\.


--
-- Name: dtb_other_deliv_other_deliv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_other_deliv_other_deliv_id_seq', 1, false);


--
-- Data for Name: dtb_ownersstore_settings; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_ownersstore_settings (public_key) FROM stdin;
\.


--
-- Data for Name: dtb_pagelayout; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_pagelayout (device_type_id, page_id, page_name, url, filename, header_chk, footer_chk, edit_flg, author, description, keyword, update_url, create_date, update_date, meta_robots) FROM stdin;
10	0	プレビューデータ	preview	\N	1	1	1	\N	\N	\N	\N	2014-09-18 10:01:37.25199	2014-09-18 10:01:37.25199	\N
10	1	TOPページ	index.php	index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.252394	2014-09-18 10:01:37.252394	\N
10	2	商品一覧ページ	products/list.php	products/list	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.252854	2014-09-18 10:01:37.252854	\N
10	3	商品詳細ページ	products/detail.php	products/detail	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.253333	2014-09-18 10:01:37.253333	\N
10	4	MYページ	mypage/index.php	mypage/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.253672	2014-09-18 10:01:37.253672	noindex
10	5	MYページ/会員登録内容変更(入力ページ)	mypage/change.php	mypage/change	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.254208	2014-09-18 10:01:37.254208	noindex
10	6	MYページ/会員登録内容変更(完了ページ)	mypage/change_complete.php	mypage/change_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.254562	2014-09-18 10:01:37.254562	noindex
10	7	MYページ/お届け先追加･変更	mypage/delivery.php	mypage/delivery	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.255037	2014-09-18 10:01:37.255037	noindex
10	8	MYページ/お気に入り一覧	mypage/favorite.php	mypage/favorite	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.255429	2014-09-18 10:01:37.255429	noindex
10	9	MYページ/購入履歴詳細	mypage/history.php	mypage/history	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.255896	2014-09-18 10:01:37.255896	noindex
10	10	MYページ/ログイン	mypage/login.php	mypage/login	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.256339	2014-09-18 10:01:37.256339	noindex
10	11	MYページ/退会手続き(入力ページ)	mypage/refusal.php	mypage/refusal	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.25671	2014-09-18 10:01:37.25671	noindex
10	12	MYページ/退会手続き(完了ページ)	mypage/refusal_complete.php	mypage/refusal_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.257207	2014-09-18 10:01:37.257207	noindex
10	13	当サイトについて	abouts/index.php	abouts/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.257611	2014-09-18 10:01:37.257611	\N
10	14	現在のカゴの中	cart/index.php	cart/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.258084	2014-09-18 10:01:37.258084	noindex
10	15	お問い合わせ(入力ページ)	contact/index.php	contact/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.258468	2014-09-18 10:01:37.258468	\N
10	16	お問い合わせ(完了ページ)	contact/complete.php	contact/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.258948	2014-09-18 10:01:37.258948	\N
10	17	会員登録(入力ページ)	entry/index.php	entry/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.259334	2014-09-18 10:01:37.259334	\N
10	18	ご利用規約	entry/kiyaku.php	entry/kiyaku	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.259814	2014-09-18 10:01:37.259814	\N
10	19	会員登録(完了ページ)	entry/complete.php	entry/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.260238	2014-09-18 10:01:37.260238	\N
10	20	特定商取引に関する法律に基づく表記	order/index.php	order/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.260674	2014-09-18 10:01:37.260674	\N
10	21	本会員登録(完了ページ)	regist/complete.php	regist/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.261095	2014-09-18 10:01:37.261095	\N
10	22	商品購入/ログイン	shopping/index.php	shopping/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.261516	2014-09-18 10:01:37.261516	noindex
10	23	商品購入/お届け先の指定	shopping/deliv.php	shopping/deliv	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.26196	2014-09-18 10:01:37.26196	noindex
10	24	商品購入/お届け先の複数指定	shopping/multiple.php	shopping/multiple	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.262389	2014-09-18 10:01:37.262389	noindex
10	25	商品購入/お支払方法・お届け時間等の指定	shopping/payment.php	shopping/payment	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.262832	2014-09-18 10:01:37.262832	noindex
10	26	商品購入/ご入力内容のご確認	shopping/confirm.php	shopping/confirm	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.263267	2014-09-18 10:01:37.263267	noindex
10	27	商品購入/ご注文完了	shopping/complete.php	shopping/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.263708	2014-09-18 10:01:37.263708	noindex
10	28	プライバシーポリシー	guide/privacy.php	guide/privacy	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.264133	2014-09-18 10:01:37.264133	\N
2	0	\N	preview	preview	1	1	1	\N	\N	\N	\N	2014-09-18 10:01:37.264554	2014-09-18 10:01:37.264554	\N
2	1	TOPページ	index.php	index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.265	2014-09-18 10:01:37.265	\N
2	2	商品一覧ページ	products/list.php	products/list	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.265424	2014-09-18 10:01:37.265424	\N
2	3	商品詳細ページ	products/detail.php	products/detail	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.265886	2014-09-18 10:01:37.265886	\N
2	4	MYページ	mypage/index.php	mypage/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.266313	2014-09-18 10:01:37.266313	noindex
2	5	MYページ/会員登録内容変更(入力ページ)	mypage/change.php	mypage/change	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.266788	2014-09-18 10:01:37.266788	noindex
2	6	MYページ/会員登録内容変更(完了ページ)	mypage/change_complete.php	mypage/change_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.26718	2014-09-18 10:01:37.26718	noindex
2	7	MYページ/お届け先追加･変更	mypage/delivery.php	mypage/delivery	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.267623	2014-09-18 10:01:37.267623	noindex
2	8	MYページ/お気に入り一覧	mypage/favorite.php	mypage/favorite	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.26804	2014-09-18 10:01:37.26804	noindex
2	9	MYページ/購入履歴詳細	mypage/history.php	mypage/history	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.268472	2014-09-18 10:01:37.268472	noindex
2	10	MYページ/ログイン	mypage/login.php	mypage/login	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.268908	2014-09-18 10:01:37.268908	noindex
2	11	MYページ/退会手続き(入力ページ)	mypage/refusal.php	mypage/refusal	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.269353	2014-09-18 10:01:37.269353	noindex
2	12	MYページ/退会手続き(完了ページ)	mypage/refusal_complete.php	mypage/refusal_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.269747	2014-09-18 10:01:37.269747	noindex
2	13	当サイトについて	abouts/index.php	abouts/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.270209	2014-09-18 10:01:37.270209	\N
2	14	現在のカゴの中	cart/index.php	cart/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.270617	2014-09-18 10:01:37.270617	noindex
2	15	お問い合わせ(入力ページ)	contact/index.php	contact/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.271076	2014-09-18 10:01:37.271076	\N
2	16	お問い合わせ(完了ページ)	contact/complete.php	contact/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.271533	2014-09-18 10:01:37.271533	\N
2	17	会員登録(入力ページ)	entry/index.php	entry/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.271945	2014-09-18 10:01:37.271945	\N
2	18	ご利用規約	entry/kiyaku.php	entry/kiyaku	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.27238	2014-09-18 10:01:37.27238	\N
2	19	会員登録(完了ページ)	entry/complete.php	entry/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.272813	2014-09-18 10:01:37.272813	\N
2	20	特定商取引に関する法律に基づく表記	order/index.php	order/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.273245	2014-09-18 10:01:37.273245	\N
2	21	本会員登録(完了ページ)	regist/complete.php	regist/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.273684	2014-09-18 10:01:37.273684	\N
2	22	商品購入/ログイン	shopping/index.php	shopping/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.274142	2014-09-18 10:01:37.274142	noindex
2	23	商品購入/お届け先の指定	shopping/deliv.php	shopping/deliv	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.274553	2014-09-18 10:01:37.274553	noindex
2	24	商品購入/お届け先の複数指定	shopping/multiple.php	shopping/multiple	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.275017	2014-09-18 10:01:37.275017	noindex
2	25	商品購入/お支払方法・お届け時間等の指定	shopping/payment.php	shopping/payment	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.27542	2014-09-18 10:01:37.27542	noindex
2	26	商品購入/ご入力内容のご確認	shopping/confirm.php	shopping/confirm	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.275853	2014-09-18 10:01:37.275853	noindex
2	27	商品購入/ご注文完了	shopping/complete.php	shopping/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.276289	2014-09-18 10:01:37.276289	noindex
2	28	プライバシーポリシー	guide/privacy.php	guide/privacy	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.276699	2014-09-18 10:01:37.276699	\N
2	29	パスワードを忘れた方	forgot/index.php	forgot/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.277159	2014-09-18 10:01:37.277159	\N
1	0	\N	preview	preview	1	1	1	\N	\N	\N	\N	2014-09-18 10:01:37.277592	2014-09-18 10:01:37.277592	\N
1	1	TOPページ	index.php	index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.278083	2014-09-18 10:01:37.278083	\N
1	2	商品一覧ページ	products/list.php	products/list	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.27846	2014-09-18 10:01:37.27846	\N
1	3	商品検索ページ	products/search.php	products/search	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.278973	2014-09-18 10:01:37.278973	\N
1	4	商品カテゴリページ	products/category_list.php	products/category_list	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.279354	2014-09-18 10:01:37.279354	\N
1	5	商品詳細ページ	products/detail.php	products/detail	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.279807	2014-09-18 10:01:37.279807	\N
1	6	MYページ	mypage/index.php	mypage/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.280207	2014-09-18 10:01:37.280207	noindex
1	7	MYページ/会員登録内容変更(入力ページ)	mypage/change.php	mypage/change	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.280643	2014-09-18 10:01:37.280643	noindex
1	8	MYページ/会員登録内容変更(完了ページ)	mypage/change_complete.php	mypage/change_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.281075	2014-09-18 10:01:37.281075	noindex
1	9	MYページ/お届け先追加･変更	mypage/delivery.php	mypage/delivery	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.281524	2014-09-18 10:01:37.281524	noindex
1	10	MYページ/お気に入り一覧	mypage/favorite.php	mypage/favorite	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.282002	2014-09-18 10:01:37.282002	noindex
1	11	MYページ/購入履歴詳細	mypage/history.php	mypage/history	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.282398	2014-09-18 10:01:37.282398	noindex
1	12	MYページ/ログイン	mypage/login.php	mypage/login	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.282859	2014-09-18 10:01:37.282859	noindex
1	13	MYページ/退会手続き(入力ページ)	mypage/refusal.php	mypage/refusal	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.283293	2014-09-18 10:01:37.283293	noindex
1	14	MYページ/退会手続き(完了ページ)	mypage/refusal_complete.php	mypage/refusal_complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.283704	2014-09-18 10:01:37.283704	noindex
1	16	現在のカゴの中	cart/index.php	cart/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.284158	2014-09-18 10:01:37.284158	noindex
1	17	お問い合わせ(入力ページ)	contact/index.php	contact/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.284624	2014-09-18 10:01:37.284624	\N
1	18	お問い合わせ(完了ページ)	contact/complete.php	contact/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.284992	2014-09-18 10:01:37.284992	\N
1	19	会員登録(入力ページ)	entry/index.php	entry/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.28549	2014-09-18 10:01:37.28549	\N
1	20	ご利用規約	entry/kiyaku.php	entry/kiyaku	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.285953	2014-09-18 10:01:37.285953	\N
1	21	会員登録(完了ページ)	entry/complete.php	entry/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.286362	2014-09-18 10:01:37.286362	\N
1	22	携帯メール登録	entry/email_mobile.php	entry/email_mobile	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.286805	2014-09-18 10:01:37.286805	\N
1	23	特定商取引に関する法律に基づく表記	order/index.php	order/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.28727	2014-09-18 10:01:37.28727	\N
1	24	本会員登録(完了ページ)	regist/complete.php	regist/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.287662	2014-09-18 10:01:37.287662	\N
1	25	商品購入/ログイン	shopping/index.php	shopping/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.288116	2014-09-18 10:01:37.288116	noindex
1	26	商品購入/お届け先の指定	shopping/deliv.php	shopping/deliv	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.288529	2014-09-18 10:01:37.288529	noindex
1	27	商品購入/お届け先の複数指定	shopping/multiple.php	shopping/multiple	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.288964	2014-09-18 10:01:37.288964	noindex
1	28	商品購入/お支払方法・お届け時間等の指定	shopping/payment.php	shopping/payment	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.289392	2014-09-18 10:01:37.289392	noindex
1	29	商品購入/ご入力内容のご確認	shopping/confirm.php	shopping/confirm	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.289826	2014-09-18 10:01:37.289826	noindex
1	30	商品購入/ご注文完了	shopping/complete.php	shopping/complete	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.290215	2014-09-18 10:01:37.290215	noindex
1	31	非対応デバイス	unsupported/index.php	unsupported/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.290653	2014-09-18 10:01:37.290653	noindex
1	32	ご利用ガイド	guide/index.php	guide/index	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.291089	2014-09-18 10:01:37.291089	\N
1	33	ご利用ガイド/ご利用方法	guide/usage.php	guide/usage	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.291521	2014-09-18 10:01:37.291521	\N
1	34	ご利用ガイド/プライバシーポリシー	guide/privacy.php	guide/privacy	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.291957	2014-09-18 10:01:37.291957	\N
1	35	ご利用ガイド/通信料について	guide/charge.php	guide/charge	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.292396	2014-09-18 10:01:37.292396	\N
1	36	ご利用ガイド/ご利用規約	guide/kiyaku.php	guide/kiyaku	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.292825	2014-09-18 10:01:37.292825	\N
1	37	ご利用ガイド/運営会社紹介	guide/about.php	guide/about	1	1	2	\N	\N	\N	\N	2014-09-18 10:01:37.293257	2014-09-18 10:01:37.293257	\N
\.


--
-- Name: dtb_pagelayout_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_pagelayout_page_id_seq', 38, false);


--
-- Data for Name: dtb_payment; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_payment (payment_id, payment_method, charge, rule_max, rank, note, fix, status, del_flg, creator_id, create_date, update_date, payment_image, upper_rule, charge_flg, rule_min, upper_rule_max, module_id, module_path, memo01, memo02, memo03, memo04, memo05, memo06, memo07, memo08, memo09, memo10) FROM stdin;
1	郵便振替	0	\N	4	\N	2	1	0	1	2014-09-18 10:01:37.29371	2014-09-18 10:01:37.29371	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	現金書留	0	\N	3	\N	2	1	0	1	2014-09-18 10:01:37.294196	2014-09-18 10:01:37.294196	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	銀行振込	0	\N	2	\N	2	1	0	1	2014-09-18 10:01:37.294557	2014-09-18 10:01:37.294557	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	代金引換	0	\N	1	\N	2	1	0	1	2014-09-18 10:01:37.295045	2014-09-18 10:01:37.295045	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: dtb_payment_options; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_payment_options (deliv_id, payment_id, rank) FROM stdin;
1	1	1
1	2	2
1	3	3
1	4	4
2	3	1
\.


--
-- Name: dtb_payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_payment_payment_id_seq', 5, false);


--
-- Data for Name: dtb_plugin; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_plugin (plugin_id, plugin_name, plugin_code, class_name, author, author_site_url, plugin_site_url, plugin_version, compliant_version, plugin_description, priority, enable, free_field1, free_field2, free_field3, free_field4, create_date, update_date) FROM stdin;
\.


--
-- Data for Name: dtb_plugin_hookpoint; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_plugin_hookpoint (plugin_hookpoint_id, plugin_id, hook_point, callback, use_flg, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_plugin_hookpoint_plugin_hookpoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_plugin_hookpoint_plugin_hookpoint_id_seq', 1, false);


--
-- Name: dtb_plugin_plugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_plugin_plugin_id_seq', 1, false);


--
-- Data for Name: dtb_product_categories; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_product_categories (product_id, category_id, rank) FROM stdin;
1	5	1
2	4	2
3	4	1
3	6	1
\.


--
-- Data for Name: dtb_product_status; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_product_status (product_status_id, product_id, creator_id, create_date, update_date, del_flg) FROM stdin;
1	1	2	2014-09-18 10:01:37.303661	2014-09-18 10:01:37.303661	0
4	3	2	2014-09-18 10:01:37.304157	2014-09-18 10:01:37.304157	0
5	3	2	2014-09-18 10:01:37.304565	2014-09-18 10:01:37.304565	0
\.


--
-- Data for Name: dtb_products; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_products (product_id, name, maker_id, status, comment1, comment2, comment3, comment4, comment5, comment6, note, main_list_comment, main_list_image, main_comment, main_image, main_large_image, sub_title1, sub_comment1, sub_image1, sub_large_image1, sub_title2, sub_comment2, sub_image2, sub_large_image2, sub_title3, sub_comment3, sub_image3, sub_large_image3, sub_title4, sub_comment4, sub_image4, sub_large_image4, sub_title5, sub_comment5, sub_image5, sub_large_image5, sub_title6, sub_comment6, sub_image6, sub_large_image6, del_flg, creator_id, create_date, update_date, deliv_date_id) FROM stdin;
1	アイスクリーム	\N	1	\N	\N	アイス,バニラ,チョコ,抹茶	\N	\N	\N	\N	暑い夏にどうぞ。	ice130.jpg	冷たいものはいかがですか?	ice260.jpg	ice500.jpg	\N	<b>おいしいよ<b>	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	2014-09-18 10:01:37.297169	2014-09-18 10:01:37.297169	2
2	おなべ	\N	1	\N	\N	鍋,なべ,ナベ	\N	\N	\N	\N	一人用からあります。	nabe130.jpg	たまには鍋でもどうでしょう。	nabe260.jpg	nabe500.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	2014-09-18 10:01:37.297607	2014-09-18 10:01:37.297607	3
3	おなべレシピ	\N	1	\N	\N	鍋,なべ,ナベ,レシピ,作り方	\N	\N	\N	\N	あの、秘伝のお鍋レシピです。	recipe130.jpg	<b>この商品はダウンロード商品です</b><br />自分でチャレンジしてみたい方に。	recipe260.jpg	recipe500.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	2014-09-18 10:01:37.298035	2014-09-18 10:01:37.298035	1
\.


--
-- Data for Name: dtb_products_class; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_products_class (product_class_id, product_id, classcategory_id1, classcategory_id2, product_type_id, product_code, stock, stock_unlimited, sale_limit, price01, price02, deliv_fee, point_rate, creator_id, create_date, update_date, down_filename, down_realfilename, del_flg) FROM stdin;
0	1	0	0	1	ice-01	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.298471	2014-09-18 10:01:37.298471	\N	\N	1
1	1	3	6	1	ice-01	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.298903	2014-09-18 10:01:37.298903	\N	\N	0
2	1	3	5	1	ice-02	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.299339	2014-09-18 10:01:37.299339	\N	\N	0
3	1	3	4	1	ice-03	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.299763	2014-09-18 10:01:37.299763	\N	\N	0
4	1	2	6	1	ice-04	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.300245	2014-09-18 10:01:37.300245	\N	\N	0
5	1	2	5	1	ice-05	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.300651	2014-09-18 10:01:37.300651	\N	\N	0
6	1	2	4	1	ice-06	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.301116	2014-09-18 10:01:37.301116	\N	\N	0
7	1	1	6	1	ice-07	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.301508	2014-09-18 10:01:37.301508	\N	\N	0
8	1	1	5	1	ice-08	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.301983	2014-09-18 10:01:37.301983	\N	\N	0
9	1	1	4	1	ice-09	\N	1	\N	1000	933	\N	10	2	2014-09-18 10:01:37.302385	2014-09-18 10:01:37.302385	\N	\N	0
10	2	0	0	1	nabe-01	100	0	5	1700	1650	\N	10	2	2014-09-18 10:01:37.302812	2014-09-18 10:01:37.302812	\N	\N	0
11	3	0	0	2	recipe-01	\N	1	\N	\N	100	\N	10	2	2014-09-18 10:01:37.303287	2014-09-18 10:01:37.303287	おなべレシピ.pdf	recipe_onabe.pdf	0
\.


--
-- Name: dtb_products_class_product_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_products_class_product_class_id_seq', 12, false);


--
-- Name: dtb_products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_products_product_id_seq', 4, false);


--
-- Data for Name: dtb_recommend_products; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_recommend_products (product_id, recommend_product_id, rank, comment, status, creator_id, create_date, update_date) FROM stdin;
2	1	4	お口直しに。	0	2	2014-09-18 10:01:37.305029	2014-09-18 10:01:37.305029
\.


--
-- Data for Name: dtb_review; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_review (review_id, product_id, reviewer_name, reviewer_url, sex, customer_id, recommend_level, title, comment, status, creator_id, create_date, update_date, del_flg) FROM stdin;
\.


--
-- Name: dtb_review_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_review_review_id_seq', 1, false);


--
-- Data for Name: dtb_send_customer; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_send_customer (customer_id, send_id, email, name, send_flag) FROM stdin;
\.


--
-- Data for Name: dtb_send_history; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_send_history (send_id, mail_method, subject, body, send_count, complete_count, start_date, end_date, search_data, del_flg, creator_id, create_date, update_date) FROM stdin;
\.


--
-- Name: dtb_send_history_send_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_send_history_send_id_seq', 1, false);


--
-- Data for Name: dtb_session; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_session (sess_id, sess_data, create_date, update_date) FROM stdin;
\.


--
-- Data for Name: dtb_shipment_item; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_shipment_item (shipping_id, product_class_id, order_id, product_name, product_code, classcategory_name1, classcategory_name2, price, quantity) FROM stdin;
\.


--
-- Data for Name: dtb_shipping; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_shipping (shipping_id, order_id, shipping_name01, shipping_name02, shipping_kana01, shipping_kana02, shipping_company_name, shipping_tel01, shipping_tel02, shipping_tel03, shipping_fax01, shipping_fax02, shipping_fax03, shipping_country_id, shipping_pref, shipping_zip01, shipping_zip02, shipping_zipcode, shipping_addr01, shipping_addr02, time_id, shipping_time, shipping_num, shipping_date, shipping_commit_date, rank, create_date, update_date, del_flg) FROM stdin;
\.


--
-- Data for Name: dtb_tax_rule; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_tax_rule (tax_rule_id, country_id, pref_id, product_id, product_class_id, calc_rule, tax_rate, tax_adjust, apply_date, member_id, del_flg, create_date, update_date) FROM stdin;
0	0	0	0	0	1	8	0	2014-09-18 10:01:37.540718	1	0	2014-09-18 10:01:37.540718	2014-09-18 10:01:37.540718
\.


--
-- Name: dtb_tax_rule_tax_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eccube_user
--

SELECT pg_catalog.setval('dtb_tax_rule_tax_rule_id_seq', 1, false);


--
-- Data for Name: dtb_templates; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_templates (template_code, device_type_id, template_name, create_date, update_date) FROM stdin;
default	10	デフォルト	2014-09-18 10:01:37.306292	2014-09-18 10:01:37.306292
mobile	1	モバイル	2014-09-18 10:01:37.306699	2014-09-18 10:01:37.306699
sphone	2	スマートフォン	2014-09-18 10:01:37.307163	2014-09-18 10:01:37.307163
\.


--
-- Data for Name: dtb_update; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY dtb_update (module_id, module_name, now_version, latest_version, module_explain, main_php, extern_php, install_sql, uninstall_sql, other_files, del_flg, create_date, update_date, release_date) FROM stdin;
\.


--
-- Data for Name: mtb_allowed_tag; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_allowed_tag (id, name, rank) FROM stdin;
0	table	0
1	tr	1
2	td	2
3	a	3
4	b	4
5	blink	5
6	br	6
7	center	7
8	font	8
9	h	9
10	hr	10
11	img	11
12	li	12
13	strong	13
14	p	14
15	div	15
16	i	16
17	u	17
18	s	18
\.


--
-- Data for Name: mtb_auth_excludes; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_auth_excludes (id, name, rank) FROM stdin;
0	index.php	0
1	logout.php	1
\.


--
-- Data for Name: mtb_authority; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_authority (id, name, rank) FROM stdin;
0	システム管理者	0
1	店舗オーナー	1
\.


--
-- Data for Name: mtb_constants; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_constants (id, name, rank, remarks) FROM stdin;
SAMPLE_ADDRESS1	"市区町村名 (例：千代田区神田神保町)"	1	フロント表示関連
SAMPLE_ADDRESS2	"番地・ビル名 (例：1-3-5)"	2	フロント表示関連
USER_DIR	"user_data/"	3	ユーザファイル保存先
USER_REALDIR	HTML_REALDIR . USER_DIR	4	ユーザファイル保存先
USER_URL	HTTP_URL . USER_DIR	9	ユーザー作成ページ等
AUTH_TYPE	"HMAC"	10	認証方式
USER_PACKAGE_DIR	"packages/"	17	テンプレートファイル保存先
USER_TEMPLATE_REALDIR	USER_REALDIR . USER_PACKAGE_DIR	18	テンプレートファイル保存先
TEMPLATE_TEMP_REALDIR	HTML_REALDIR . "upload/temp_template/"	19	テンプレートファイル一時保存先
USER_DEF_PHP_REALFILE	DATA_REALDIR . "__default.php"	20	ユーザー作成画面のデフォルトPHPファイル
MODULE_DIR	"downloads/module/"	22	ダウンロードモジュール保存ディレクトリ
MODULE_REALDIR	DATA_REALDIR . MODULE_DIR	23	ダウンロードモジュール保存ディレクトリ
MAX_LIFETIME	7200	26	DBセッションの有効期限(秒)
MASTER_DATA_REALDIR	DATA_REALDIR . "cache/"	27	マスターデータキャッシュディレクトリ
UPDATE_HTTP	"http://www.ec-cube.net/info/index.php"	28	アップデート管理用ファイル格納場所
CHAR_CODE	"UTF-8"	39	文字コード
LOCALE	"ja_JP.UTF-8"	40	ロケール設定
ECCUBE_PAYMENT	"EC-CUBE"	41	決済モジュール付与文言
PEAR_DB_DEBUG	0	42	PEAR::DBのデバッグモード
PEAR_DB_PERSISTENT	false	43	PEAR::DBの持続的接続オプション
CLOSE_DAY	31	45	締め日の指定(末日の場合は、31を指定してください。)
FAVORITE_ERROR	13	46	一般サイトエラー
GRAPH_REALDIR	HTML_REALDIR . "upload/graph_image/"	49	グラフ格納ディレクトリ
GRAPH_URLPATH	ROOT_URLPATH . "upload/graph_image/"	50	グラフURL
GRAPH_PIE_MAX	10	51	円グラフ最大表示数
GRAPH_LABEL_MAX	40	52	グラフのラベルの文字数
PRODUCTS_TOTAL_MAX	15	55	商品集計で何位まで表示するか
DEFAULT_PRODUCT_DISP	2	56	1:公開 2:非公開
DELIV_FREE_AMOUNT	0	57	送料無料購入数量 (0の場合は、いくつ買っても無料にならない)
INPUT_DELIV_FEE	1	58	配送料の設定画面表示(有効:1 無効:0)
OPTION_PRODUCT_DELIV_FEE	0	59	商品ごとの送料設定(有効:1 無効:0)
OPTION_DELIV_FEE	1	60	配送業者ごとの配送料を加算する(有効:1 無効:0)
OPTION_RECOMMEND	1	61	おすすめ商品登録(有効:1 無効:0)
OPTION_CLASS_REGIST	1	62	商品規格登録(有効:1 無効:0)
DEFAULT_PASSWORD	"******"	66	会員登録変更(マイページ)パスワード用
DELIV_ADDR_MAX	20	67	別のお届け先最大登録数
ORDER_STATUS_MAX	50	70	対応状況管理画面の一覧表示件数
REVIEW_REGIST_MAX	5	71	フロントレビュー書き込み最大数
DEBUG_MODE	false	72	デバッグモード(true：sfPrintRやDBのエラーメッセージ、ログレベルがDebugのログを出力する、false：出力しない)
USE_VERBOSE_LOG	DEBUG_MODE	73	ログを冗長とするか(true:利用する、false:利用しない)
ADMIN_ID	"1"	74	管理ユーザID(メンテナンス用表示されない。)
CUSTOMER_CONFIRM_MAIL	false	75	会員登録時に仮会員確認メールを送信するか (true:仮会員、false:本会員)
LOGIN_FRAME	"login_frame.tpl"	77	ログイン画面フレーム
MAIN_FRAME	"main_frame.tpl"	78	管理画面フレーム
SITE_FRAME	"site_frame.tpl"	79	一般サイト画面フレーム
CERT_STRING	"7WDhcBTF"	80	認証文字列
BIRTH_YEAR	1901	83	生年月日登録開始年
RELEASE_YEAR	2005	84	本システムの稼働開始年
CREDIT_ADD_YEAR	10	85	クレジットカードの期限＋何年
POINT_RULE	2	88	ポイントの計算ルール(1:四捨五入、2:切り捨て、3:切り上げ)
POINT_VALUE	1	89	1ポイント当たりの値段(円)
ADMIN_MODE	0	90	管理モード 1:有効　0:無効(納品時)
MAX_LOG_QUANTITY	5	92	ログファイル最大数(ログテーション)
MAX_LOG_SIZE	"1000000"	93	1つのログファイルに保存する最大容量(byte)
TRANSACTION_ID_NAME	"transactionid"	94	トランザクションID の名前
FORGOT_MAIL	0	95	パスワード忘れの確認メールを送付するか否か。(0:送信しない、1:送信する)
BIRTH_MONTH_POINT	0	98	誕生日月ポイント
LARGE_IMAGE_WIDTH	500	110	拡大画像横
LARGE_IMAGE_HEIGHT	500	111	拡大画像縦
SMALL_IMAGE_WIDTH	130	112	一覧画像横
SMALL_IMAGE_HEIGHT	130	113	一覧画像縦
NORMAL_IMAGE_WIDTH	260	114	通常画像横
NORMAL_IMAGE_HEIGHT	260	115	通常画像縦
NORMAL_SUBIMAGE_WIDTH	200	116	通常サブ画像横
NORMAL_SUBIMAGE_HEIGHT	200	117	通常サブ画像縦
LARGE_SUBIMAGE_WIDTH	500	118	拡大サブ画像横
LARGE_SUBIMAGE_HEIGHT	500	119	拡大サブ画像縦
IMAGE_SIZE	1000	126	画像サイズ制限(KB)
CSV_SIZE	2000	127	CSVサイズ制限(KB)
CSV_LINE_MAX	10000	128	CSVアップロード1行あたりの最大文字数
FILE_SIZE	10000	130	ファイル管理画面アップ制限(KB)
TEMPLATE_SIZE	10000	131	アップできるテンプレートファイル制限(KB)
LEVEL_MAX	5	132	カテゴリの最大階層
CATEGORY_MAX	1000	133	最大カテゴリ登録数
ADMIN_TITLE	"EC-CUBE 管理機能"	134	管理機能タイトル
SELECT_RGB	"#ffffdf"	135	編集時強調表示色
DISABLED_RGB	"#C9C9C9"	136	入力項目無効時の表示色
ERR_COLOR	"#ffe8e8"	137	エラー時表示色
CATEGORY_HEAD	">"	138	親カテゴリ表示文字
START_BIRTH_YEAR	1970	139	生年月日初期選択年
NORMAL_PRICE_TITLE	"通常価格"	140	価格名称
SALE_PRICE_TITLE	"販売価格"	141	価格名称
LOG_REALFILE	DATA_REALDIR . "logs/site.log"	142	標準ログファイル
CUSTOMER_LOG_REALFILE	DATA_REALDIR . "logs/customer.log"	143	会員ログイン ログファイル
ADMIN_LOG_REALFILE	DATA_REALDIR . "logs/admin.log"	144	管理機能ログファイル
DEBUG_LOG_REALFILE	""	145	デバッグログファイル(未入力:標準ログファイル・管理画面ログファイル)
ERROR_LOG_REALFILE	DATA_REALDIR . "logs/error.log"	146	エラーログファイル(未入力:標準ログファイル・管理画面ログファイル)
DB_LOG_REALFILE	DATA_REALDIR . "logs/db.log"	147	DBログファイル
PLUGIN_LOG_REALFILE	DATA_REALDIR . "logs/plugin.log"	148	プラグインログファイル
IMAGE_TEMP_REALDIR	HTML_REALDIR . "upload/temp_image/"	150	画像一時保存
IMAGE_SAVE_REALDIR	HTML_REALDIR . "upload/save_image/"	151	画像保存先
IMAGE_TEMP_URLPATH	ROOT_URLPATH . "upload/temp_image/"	152	画像一時保存URL
IMAGE_SAVE_URLPATH	ROOT_URLPATH . "upload/save_image/"	153	画像保存先URL
IMAGE_TEMP_RSS_URL	HTTP_URL . "upload/temp_image/"	154	RSS用画像一時保存URL
IMAGE_SAVE_RSS_URL	HTTP_URL . "upload/save_image/"	155	RSS用画像保存先URL
CSV_TEMP_REALDIR	DATA_REALDIR . "upload/csv/"	156	エンコードCSVの一時保存先
NO_IMAGE_REALFILE	USER_TEMPLATE_REALDIR . "default/img/picture/img_blank.gif"	158	画像がない場合に表示
ADMIN_SYSTEM_URLPATH	ROOT_URLPATH . ADMIN_DIR . "system/" . DIR_INDEX_PATH	159	システム管理トップ
INPUT_ZIP_URLPATH	ROOT_URLPATH . "input_zip.php"	161	郵便番号入力
ADMIN_HOME_URLPATH	ROOT_URLPATH . ADMIN_DIR . "home.php"	165	ホーム
ADMIN_LOGIN_URLPATH	ROOT_URLPATH . ADMIN_DIR . DIR_INDEX_PATH	166	ログインページ
ADMIN_PRODUCTS_URLPATH	ROOT_URLPATH . ADMIN_DIR . "products/" . DIR_INDEX_PATH	167	商品検索ページ
ADMIN_ORDER_EDIT_URLPATH	ROOT_URLPATH . ADMIN_DIR . "order/edit.php"	168	注文編集ページ
ADMIN_ORDER_URLPATH	ROOT_URLPATH . ADMIN_DIR . "order/" . DIR_INDEX_PATH	169	注文編集ページ
ADMIN_ORDER_MAIL_URLPATH	ROOT_URLPATH . ADMIN_DIR . "order/mail.php"	170	注文編集ページ
ADMIN_LOGOUT_URLPATH	ROOT_URLPATH . ADMIN_DIR . "logout.php"	171	ログアウトページ
MEMBER_PMAX	10	182	メンバー管理ページ表示行数
SEARCH_PMAX	10	183	検索ページ表示行数
NAVI_PMAX	4	184	ページ番号の最大表示数量
PRODUCTSUB_MAX	5	185	商品サブ情報最大数
DELIVTIME_MAX	16	186	お届け時間の最大表示数
DELIVFEE_MAX	47	187	配送料金の最大表示数
STEXT_LEN	50	188	短い項目の文字数 (名前など)
SMTEXT_LEN	100	189	\N
MTEXT_LEN	200	190	長い項目の文字数 (住所など)
MLTEXT_LEN	1000	191	長中文の文字数 (問い合わせなど)
LTEXT_LEN	3000	192	長文の文字数
LLTEXT_LEN	99999	193	超長文の文字数 (メルマガなど)
URL_LEN	1024	194	URLの文字長
ID_MAX_LEN	STEXT_LEN	195	管理画面用：ID・パスワードの最大文字数
ID_MIN_LEN	4	196	管理画面用：ID・パスワードの最小文字数
PRICE_LEN	8	197	金額桁数
PERCENTAGE_LEN	3	198	率桁数
AMOUNT_LEN	6	199	在庫数、販売制限数
ZIP01_LEN	3	200	郵便番号1
ZIP02_LEN	4	201	郵便番号2
TEL_ITEM_LEN	6	202	電話番号各項目制限
TEL_LEN	12	203	電話番号総数
PASSWORD_MIN_LEN	4	204	フロント画面用：パスワードの最小文字数
PASSWORD_MAX_LEN	STEXT_LEN	205	フロント画面用：パスワードの最大文字数
INT_LEN	9	206	検査数値用桁数(INT)
CREDIT_NO_LEN	4	207	クレジットカードの文字数 (*モジュールで使用)
SEARCH_CATEGORY_LEN	18	208	検索カテゴリ最大表示文字数(byte)
FILE_NAME_LEN	10	209	ファイル名表示文字数
COOKIE_EXPIRE	365	212	クッキー保持期限(日)
SEPA_CATNAVI	" > "	235	カテゴリ区切り文字
SHOPPING_URL	HTTPS_URL . "shopping/" . DIR_INDEX_PATH	237	会員情報入力
ENTRY_URL	HTTPS_URL . "entry/" . DIR_INDEX_PATH	238	会員登録ページTOP
TOP_URL	HTTP_URL . DIR_INDEX_PATH	239	サイトトップ
CART_URL	HTTP_URL . "cart/" . DIR_INDEX_PATH	240	カートトップ
DELIV_URLPATH	ROOT_URLPATH . "shopping/deliv.php"	241	お届け先設定
MULTIPLE_URLPATH	ROOT_URLPATH . "shopping/multiple.php"	242	複数お届け先設定
SHOPPING_CONFIRM_URLPATH	ROOT_URLPATH . "shopping/confirm.php"	244	購入確認ページ
SHOPPING_PAYMENT_URLPATH	ROOT_URLPATH . "shopping/payment.php"	245	お支払い方法選択ページ
SHOPPING_COMPLETE_URLPATH	ROOT_URLPATH . "shopping/complete.php"	246	購入完了画面
SHOPPING_MODULE_URLPATH	ROOT_URLPATH . "shopping/load_payment_module.php"	249	モジュール追加用画面
P_DETAIL_URLPATH	ROOT_URLPATH . "products/detail.php?product_id="	253	商品詳細(HTML出力)
MYPAGE_DELIVADDR_URLPATH	ROOT_URLPATH . "mypage/delivery.php"	254	マイページお届け先URL
ADMIN_NEWS_STARTYEAR	2005	264	新着情報管理画面 開始年(西暦)
ENTRY_LIMIT_HOUR	1	267	再入会制限時間 (単位: 時間)
RECOMMEND_PRODUCT_MAX	6	268	関連商品表示数
RECOMMEND_NUM	8	269	おすすめ商品表示数
DELIV_DATE_END_MAX	21	272	お届け可能日以降のプルダウン表示最大日数
CV_PAYMENT_LIMIT	14	275	支払期限 (*モジュールで使用)
REVIEW_ALLOW_URL	0	277	商品レビューでURL書き込みを許可するか否か
UPDATE_SEND_SITE_INFO	false	289	アップデート時にサイト情報を送出するか
USE_POINT	true	290	ポイントを利用するか(true:利用する、false:利用しない) (false は一部対応)
NOSTOCK_HIDDEN	false	291	在庫無し商品の非表示(true:非表示、false:表示)
USE_MOBILE	true	292	モバイルサイトを利用するか(true:利用する、false:利用しない) (false は一部対応) (*モジュールで使用)
USE_MULTIPLE_SHIPPING	true	293	複数配送先指定機能を利用するか(true:利用する、false:利用しない)
SLTEXT_LEN	500	294	短文の文字数
DEFAULT_TEMPLATE_NAME	"default"	300	デフォルトテンプレート名(PC)
MOBILE_DEFAULT_TEMPLATE_NAME	"mobile"	301	デフォルトテンプレート名(モバイル)
SMARTPHONE_DEFAULT_TEMPLATE_NAME	"sphone"	302	デフォルトテンプレート名(スマートフォン)
TEMPLATE_NAME	"default"	303	テンプレート名
MOBILE_TEMPLATE_NAME	"mobile"	304	モバイルテンプレート名
SMARTPHONE_TEMPLATE_NAME	"sphone"	305	スマートフォンテンプレート名
SMARTY_TEMPLATES_REALDIR	 DATA_REALDIR . "Smarty/templates/"	306	SMARTYテンプレート
TEMPLATE_REALDIR	SMARTY_TEMPLATES_REALDIR . TEMPLATE_NAME . "/"	307	SMARTYテンプレート(PC)
TEMPLATE_ADMIN_REALDIR	SMARTY_TEMPLATES_REALDIR . "admin/"	308	SMARTYテンプレート(管理機能)
COMPILE_REALDIR	DATA_REALDIR . "Smarty/templates_c/" . TEMPLATE_NAME . "/"	309	SMARTYコンパイル
COMPILE_ADMIN_REALDIR	DATA_REALDIR . "Smarty/templates_c/admin/"	310	SMARTYコンパイル(管理機能)
BLOC_DIR	"frontparts/bloc/"	311	ブロックファイル保存先
MOBILE_TEMPLATE_REALDIR	SMARTY_TEMPLATES_REALDIR . MOBILE_TEMPLATE_NAME . "/"	312	SMARTYテンプレート(mobile)
MOBILE_COMPILE_REALDIR	DATA_REALDIR . "Smarty/templates_c/" . MOBILE_TEMPLATE_NAME . "/"	313	SMARTYコンパイル(mobile)
SMARTPHONE_TEMPLATE_REALDIR	SMARTY_TEMPLATES_REALDIR . SMARTPHONE_TEMPLATE_NAME . "/"	314	SMARTYテンプレート(smart phone)
SMARTPHONE_COMPILE_REALDIR	DATA_REALDIR . "Smarty/templates_c/" . SMARTPHONE_TEMPLATE_NAME . "/"	315	SMARTYコンパイル(smartphone)
RFC_COMPLIANT_EMAIL_CHECK	false	401	EメールアドレスチェックをRFC準拠にするか(true:準拠する、false:準拠しない)
MOBILE_SESSION_LIFETIME	1800	402	モバイルサイトのセッションの存続時間 (秒)
MOBILE_IMAGE_REALDIR	HTML_REALDIR . "upload/mobile_image/"	408	携帯電話向け変換画像保存ディレクトリ
MOBILE_IMAGE_URLPATH	ROOT_URLPATH . "upload/mobile_image/"	409	携帯電話向け変換画像保存ディレクトリ
MOBILE_TOP_URLPATH	ROOT_URLPATH . DIR_INDEX_PATH	410	モバイルURL
MOBILE_CART_URLPATH	ROOT_URLPATH . "cart/" . DIR_INDEX_PATH	411	カートトップ
MOBILE_SHOPPING_CONFIRM_URLPATH	ROOT_URLPATH . "shopping/confirm.php"	413	購入確認ページ
MOBILE_SHOPPING_PAYMENT_URLPATH	ROOT_URLPATH . "shopping/payment.php"	414	お支払い方法選択ページ
MOBILE_P_DETAIL_URLPATH	ROOT_URLPATH . "products/detail.php?product_id="	415	商品詳細(HTML出力)
MOBILE_SHOPPING_COMPLETE_URLPATH	ROOT_URLPATH . "shopping/complete.php"	416	購入完了画面 (*モジュールで使用)
SESSION_KEEP_METHOD	"useCookie"	418	セッション維持方法："useCookie"|"useRequest"
SESSION_LIFETIME	1800	419	セッションの存続時間 (秒)
OSTORE_URL	"http://www.ec-cube.net/"	500	オーナーズストアURL
OSTORE_SSLURL	"https://www.ec-cube.net/"	501	オーナーズストアURL
OSTORE_LOG_REALFILE	DATA_REALDIR . "logs/ownersstore.log"	502	オーナーズストアログパス
OPTION_FAVORITE_PRODUCT	1	523	お気に入り商品登録(有効:1 無効:0)
IMAGE_RENAME	true	525	画像リネーム設定 (商品画像のみ) (true:リネームする、false:リネームしない)
PLUGIN_DIR	"plugins/"	600	(2.11用)プラグインディレクトリ(モジュールで使用)
PLUGIN_REALDIR	USER_REALDIR . PLUGIN_DIR	601	(2.11用)プラグイン保存先(モジュールで使用)
PLUGIN_UPLOAD_REALDIR	DATA_REALDIR . "downloads/plugin/"	604	プラグイン保存先ディレクトリ
PLUGIN_HTML_REALDIR	HTML_REALDIR . "plugin/"	605	プラグイン保存先ディレクトリ(html)
PLUGIN_TEMP_REALDIR	HTML_REALDIR . "upload/temp_plugin/"	608	プラグインファイル一時保存先
PLUGIN_EXTENSION	"tar,tar.gz"	611	プラグインファイル登録可能拡張子(カンマ区切り)
DOWNLOADS_TEMP_PLUGIN_UPDATE_DIR	DATA_REALDIR . "downloads/tmp/plugin_update/"	612	プラグイン一時展開用ディレクトリ（アップデート用）
DOWNLOADS_TEMP_PLUGIN_INSTALL_DIR	DATA_REALDIR . "downloads/tmp/plugin_install/"	613	プラグイン一時展開用ディレクトリ（インストール用）
PLUGIN_HTML_URLPATH	ROOT_URLPATH . "plugin/"	614	プラグインURL
DOWNLOAD_DAYS_LEN	3	700	日数桁数
DOWNLOAD_EXTENSION	"zip,lzh,jpg,jpeg,gif,png,mp3,pdf,csv"	701	ダウンロードファイル登録可能拡張子(カンマ区切り)
DOWN_SIZE	50000	702	ダウンロード販売ファイル用サイズ制限(KB)
DEFAULT_PRODUCT_DOWN	1	703	1:実商品 2:ダウンロード
DOWN_TEMP_REALDIR	DATA_REALDIR . "download/temp/"	704	ダウンロードファイル一時保存
DOWN_SAVE_REALDIR	DATA_REALDIR . "download/save/"	705	ダウンロードファイル保存先
DOWNLOAD_BLOCK	1024	708	ダウンロード販売機能 ダウンロードファイル読み込みバイト(KB)
ORDER_NEW	1	800	新規注文
ORDER_PAY_WAIT	2	801	入金待ち
ORDER_PRE_END	6	802	入金済み
ORDER_CANCEL	3	803	キャンセル
ORDER_BACK_ORDER	4	804	取り寄せ中
ORDER_DELIV	5	805	発送済み
ORDER_PENDING	7	806	決済処理中
PRODUCT_TYPE_NORMAL	1	900	通常商品
PRODUCT_TYPE_DOWNLOAD	2	901	ダウンロード商品
SQL_QUERY_LOG_MODE	1	1000	DBログの記録モード (0:記録しない, 1:遅延時のみ記録する, 2:常に記録する)
SQL_QUERY_LOG_MIN_EXEC_TIME	2	1001	DBログで遅延とみなす実行時間(秒)
PAGE_DISPLAY_TIME_LOG_MODE	1	1002	ページ表示時間のログを取得するフラグ(1:表示, 0:非表示)
PAGE_DISPLAY_TIME_LOG_MIN_EXEC_TIME	2	1003	ページ表示時間のログを取得する時間設定(設定値以上かかった場合に取得)
DEVICE_TYPE_MOBILE	1	1100	端末種別: モバイル
DEVICE_TYPE_SMARTPHONE	2	1101	端末種別: スマートフォン
DEVICE_TYPE_PC	10	1102	端末種別: PC
DEVICE_TYPE_ADMIN	99	1103	端末種別: 管理画面
ECCUBE_INFO	true	1218	EC-CUBE更新情報取得 (true:取得する false:取得しない)
HTTP_REQUEST_TIMEOUT	"5"	1219	外部サイトHTTP取得タイムアウト時間(秒)
ZIP_DOWNLOAD_URL	"http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"	1224	郵便番号CSVのZIPアーカイブファイルの取得元
HOOK_POINT_PREPROCESS	"LC_Page_preProcess"	1301	フックポイント(プレプロセス)
HOOK_POINT_PROCESS	"LC_Page_process"	1302	フックポイント(プロセス)
PLUGIN_ACTIVATE_FLAG	true	1303	プラグインのロード可否フラグ)
SMARTY_FORCE_COMPILE_MODE	false	1401	SMARTYコンパイルモード
LOGIN_RETRY_INTERVAL	0	1411	ログイン失敗時の遅延時間(秒)(ブルートフォースアタック対策)
MYPAGE_ORDER_STATUS_DISP_FLAG	true	1412	MYページ：ご注文状況表示フラグ
DEFAULT_COUNTRY_ID	392	1413	デフォルト国コード ISO_3166-1に準拠
USE_NORMALIZE_HOSTNAME	true	1414	ホスト名を正規化するか (true:する false:しない)
FORM_COUNTRY_ENABLE	false	1415	各種フォームで国の指定を有効にする(true:有効 false:無効)
OPTION_PRODUCT_TAX_RULE	0	1416	商品ごとの税率設定(軽減税率対応 有効:1 無効:0)
TAX_RULE_PRIORITY	"product_id,product_class_id,pref_id,country_id"	1417	複数箇所の税率設定時における優先度設定。カンマ区切りスペース不可で記述。後に書いてあるキーに一致するほど優先される。デフォルト：'product_id,product_class_id,pref_id,country_id'（国＞地域（県）＞規格単位＞商品単位）
PENDING_ORDER_CANCEL_TIME	900	1418	決済処理中ステータスのロールバックを行う時間の設定(秒)
PENDING_ORDER_CANCEL_FLAG	true	1419	決済処理中ステータスのロールバックをするか(true:する false:しない)
API_ENABLE_FLAG	false	1420	API機能を有効にする(true:する false:しない)
\.


--
-- Data for Name: mtb_country; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_country (id, name, rank) FROM stdin;
352	アイスランド	1
372	アイルランド	2
31	アゼルバイジャン	3
4	アフガニスタン	4
840	アメリカ合衆国	5
850	アメリカ領ヴァージン諸島	6
16	アメリカ領サモア	7
784	アラブ首長国連邦	8
12	アルジェリア	9
32	アルゼンチン	10
533	アルバ	11
8	アルバニア	12
51	アルメニア	13
660	アンギラ	14
24	アンゴラ	15
28	アンティグア・バーブーダ	16
20	アンドラ	17
887	イエメン	18
826	イギリス	19
86	イギリス領インド洋地域	20
92	イギリス領ヴァージン諸島	21
376	イスラエル	22
380	イタリア	23
368	イラク	24
364	イラン|イラン・イスラム共和国	25
356	インド	26
360	インドネシア	27
876	ウォリス・フツナ	28
800	ウガンダ	29
804	ウクライナ	30
860	ウズベキスタン	31
858	ウルグアイ	32
218	エクアドル	33
818	エジプト	34
233	エストニア	35
231	エチオピア	36
232	エリトリア	37
222	エルサルバドル	38
36	オーストラリア	39
40	オーストリア	40
248	オーランド諸島	41
512	オマーン	42
528	オランダ	43
288	ガーナ	44
132	カーボベルデ	45
831	ガーンジー	46
328	ガイアナ	47
398	カザフスタン	48
634	カタール	49
581	合衆国領有小離島	50
124	カナダ	51
266	ガボン	52
120	カメルーン	53
270	ガンビア	54
116	カンボジア	55
580	北マリアナ諸島	56
324	ギニア	57
624	ギニアビサウ	58
196	キプロス	59
192	キューバ	60
531	キュラソー島|キュラソー	61
300	ギリシャ	62
296	キリバス	63
417	キルギス	64
320	グアテマラ	65
312	グアドループ	66
316	グアム	67
414	クウェート	68
184	クック諸島	69
304	グリーンランド	70
162	クリスマス島 (オーストラリア)|クリスマス島	71
268	グルジア	72
308	グレナダ	73
191	クロアチア	74
136	ケイマン諸島	75
404	ケニア	76
384	コートジボワール	77
166	ココス諸島|ココス（キーリング）諸島	78
188	コスタリカ	79
174	コモロ	80
170	コロンビア	81
178	コンゴ共和国	82
180	コンゴ民主共和国	83
682	サウジアラビア	84
239	サウスジョージア・サウスサンドウィッチ諸島	85
882	サモア	86
678	サントメ・プリンシペ	87
652	サン・バルテルミー島|サン・バルテルミー	88
894	ザンビア	89
666	サンピエール島・ミクロン島	90
674	サンマリノ	91
663	サン・マルタン (西インド諸島)|サン・マルタン（フランス領）	92
694	シエラレオネ	93
262	ジブチ	94
292	ジブラルタル	95
832	ジャージー	96
388	ジャマイカ	97
760	シリア|シリア・アラブ共和国	98
702	シンガポール	99
534	シント・マールテン|シント・マールテン（オランダ領）	100
716	ジンバブエ	101
756	スイス	102
752	スウェーデン	103
729	スーダン	104
744	スヴァールバル諸島およびヤンマイエン島	105
724	スペイン	106
740	スリナム	107
144	スリランカ	108
703	スロバキア	109
705	スロベニア	110
748	スワジランド	111
690	セーシェル	112
226	赤道ギニア	113
686	セネガル	114
688	セルビア	115
659	セントクリストファー・ネイビス	116
670	セントビンセント・グレナディーン|セントビンセントおよびグレナディーン諸島	117
654	セントヘレナ・アセンションおよびトリスタンダクーニャ	118
662	セントルシア	119
706	ソマリア	120
90	ソロモン諸島	121
796	タークス・カイコス諸島	122
764	タイ王国|タイ	123
410	大韓民国	124
158	台湾	125
762	タジキスタン	126
834	タンザニア	127
203	チェコ	128
148	チャド	129
140	中央アフリカ共和国	130
156	中華人民共和国|中国	131
788	チュニジア	132
408	朝鮮民主主義人民共和国	133
152	チリ	134
798	ツバル	135
208	デンマーク	136
276	ドイツ	137
768	トーゴ	138
772	トケラウ	139
214	ドミニカ共和国	140
212	ドミニカ国	141
780	トリニダード・トバゴ	142
795	トルクメニスタン	143
792	トルコ	144
776	トンガ	145
566	ナイジェリア	146
520	ナウル	147
516	ナミビア	148
10	南極	149
570	ニウエ	150
558	ニカラグア	151
562	ニジェール	152
392	日本	153
732	西サハラ	154
540	ニューカレドニア	155
554	ニュージーランド	156
524	ネパール	157
574	ノーフォーク島	158
578	ノルウェー	159
334	ハード島とマクドナルド諸島	160
48	バーレーン	161
332	ハイチ	162
586	パキスタン	163
336	バチカン|バチカン市国	164
591	パナマ	165
548	バヌアツ	166
44	バハマ	167
598	パプアニューギニア	168
60	バミューダ諸島|バミューダ	169
585	パラオ	170
600	パラグアイ	171
52	バルバドス	172
275	パレスチナ	173
348	ハンガリー	174
50	バングラデシュ	175
626	東ティモール	176
612	ピトケアン諸島|ピトケアン	177
242	フィジー	178
608	フィリピン	179
246	フィンランド	180
64	ブータン	181
74	ブーベ島	182
630	プエルトリコ	183
234	フェロー諸島	184
238	フォークランド諸島|フォークランド（マルビナス）諸島	185
76	ブラジル	186
250	フランス	187
254	フランス領ギアナ	188
258	フランス領ポリネシア	189
260	フランス領南方・南極地域	190
100	ブルガリア	191
854	ブルキナファソ	192
96	ブルネイ|ブルネイ・ダルサラーム	193
108	ブルンジ	194
704	ベトナム	195
204	ベナン	196
862	ベネズエラ|ベネズエラ・ボリバル共和国	197
112	ベラルーシ	198
84	ベリーズ	199
604	ペルー	200
56	ベルギー	201
616	ポーランド	202
70	ボスニア・ヘルツェゴビナ	203
72	ボツワナ	204
535	BES諸島|ボネール、シント・ユースタティウスおよびサバ	205
68	ボリビア|ボリビア多民族国	206
620	ポルトガル	207
344	香港	208
340	ホンジュラス	209
584	マーシャル諸島	210
446	マカオ	211
807	マケドニア共和国|マケドニア旧ユーゴスラビア共和国	212
450	マダガスカル	213
175	マヨット	214
454	マラウイ	215
466	マリ共和国|マリ	216
470	マルタ	217
474	マルティニーク	218
458	マレーシア	219
833	マン島	220
583	ミクロネシア連邦	221
710	南アフリカ共和国|南アフリカ	222
728	南スーダン	223
104	ミャンマー	224
484	メキシコ	225
480	モーリシャス	226
478	モーリタニア	227
508	モザンビーク	228
492	モナコ	229
462	モルディブ	230
498	モルドバ|モルドバ共和国	231
504	モロッコ	232
496	モンゴル国|モンゴル	233
499	モンテネグロ	234
500	モントセラト	235
400	ヨルダン	236
418	ラオス|ラオス人民民主共和国	237
428	ラトビア	238
440	リトアニア	239
434	リビア	240
438	リヒテンシュタイン	241
430	リベリア	242
642	ルーマニア	243
442	ルクセンブルク	244
646	ルワンダ	245
426	レソト	246
422	レバノン	247
638	レユニオン	248
643	ロシア|ロシア連邦	249
\.


--
-- Data for Name: mtb_customer_order_status; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_customer_order_status (id, name, rank) FROM stdin;
7	注文未完了	0
1	注文受付	1
2	入金待ち	2
6	注文受付	3
3	キャンセル	4
4	注文受付	5
5	発送済み	6
\.


--
-- Data for Name: mtb_customer_status; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_customer_status (id, name, rank) FROM stdin;
1	仮会員	0
2	本会員	1
\.


--
-- Data for Name: mtb_db; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_db (id, name, rank) FROM stdin;
1	PostgreSQL	0
2	MySQL	1
\.


--
-- Data for Name: mtb_delivery_date; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_delivery_date (id, name, rank) FROM stdin;
1	即日	0
2	1～2日後	1
3	3～4日後	2
4	1週間以降	3
5	2週間以降	4
6	3週間以降	5
7	1ヶ月以降	6
8	2ヶ月以降	7
9	お取り寄せ(商品入荷後)	8
\.


--
-- Data for Name: mtb_device_type; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_device_type (id, name, rank) FROM stdin;
1	モバイル	0
2	スマートフォン	1
10	PC	2
99	管理画面	3
\.


--
-- Data for Name: mtb_disable_logout; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_disable_logout (id, name, rank) FROM stdin;
1	/shopping/deliv.php	0
2	/shopping/payment.php	1
3	/shopping/confirm.php	2
4	/shopping/card.php	3
5	/shopping/loan.php	4
\.


--
-- Data for Name: mtb_disp; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_disp (id, name, rank) FROM stdin;
1	公開	0
2	非公開	1
\.


--
-- Data for Name: mtb_job; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_job (id, name, rank) FROM stdin;
1	公務員	0
2	コンサルタント	1
3	コンピューター関連技術職	2
4	コンピューター関連以外の技術職	3
5	金融関係	4
6	医師	5
7	弁護士	6
8	総務・人事・事務	7
9	営業・販売	8
10	研究・開発	9
11	広報・宣伝	10
12	企画・マーケティング	11
13	デザイン関係	12
14	会社経営・役員	13
15	出版・マスコミ関係	14
16	学生・フリーター	15
17	主婦	16
18	その他	17
\.


--
-- Data for Name: mtb_magazine_type; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_magazine_type (id, name, rank) FROM stdin;
1	HTML	0
2	テキスト	1
\.


--
-- Data for Name: mtb_mail_magazine_type; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_mail_magazine_type (id, name, rank) FROM stdin;
1	HTMLメール	0
2	テキストメール	1
3	希望しない	2
\.


--
-- Data for Name: mtb_mail_template; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_mail_template (id, name, rank) FROM stdin;
1	注文受付メール	0
2	注文受付メール(携帯)	1
3	注文キャンセル受付メール	2
4	取り寄せ確認メール	3
5	お問い合わせ受付メール	4
\.


--
-- Data for Name: mtb_mail_tpl_path; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_mail_tpl_path (id, name, rank) FROM stdin;
1	mail_templates/order_mail.tpl	0
2	mail_templates/order_mail.tpl	1
3	mail_templates/order_mail.tpl	2
4	mail_templates/order_mail.tpl	3
5	mail_templates/contact_mail.tpl	4
\.


--
-- Data for Name: mtb_mail_type; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_mail_type (id, name, rank) FROM stdin;
1	PCメールアドレス	0
2	携帯メールアドレス	1
3	PCメールアドレス (携帯メールアドレスを登録している会員は除外)	2
4	携帯メールアドレス (PCメールアドレスを登録している会員は除外)	3
\.


--
-- Data for Name: mtb_mobile_domain; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_mobile_domain (id, name, rank) FROM stdin;
1	docomo.ne.jp	0
2	ezweb.ne.jp	1
3	softbank.ne.jp	2
4	vodafone.ne.jp	3
5	pdx.ne.jp	4
6	disney.ne.jp	5
7	willcom.com	6
8	emnet.ne.jp	7
9	i.softbank.jp	8
10	emobile.ne.jp	9
\.


--
-- Data for Name: mtb_order_status; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_order_status (id, name, rank) FROM stdin;
7	決済処理中	0
1	新規受付	1
2	入金待ち	2
6	入金済み	3
3	キャンセル	4
4	取り寄せ中	5
5	発送済み	6
\.


--
-- Data for Name: mtb_order_status_color; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_order_status_color (id, name, rank) FROM stdin;
1	#FFFFFF	0
2	#FFDE9B	1
3	#C9C9C9	2
4	#FFD9D9	3
5	#BFDFFF	4
6	#FFFFAB	5
7	#FFCCCC	6
\.


--
-- Data for Name: mtb_ownersstore_err; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_ownersstore_err (id, name, rank) FROM stdin;
1000	不明なエラーが発生しました。	0
1001	不正なパラメーターが送信されました。	1
1002	認証に失敗しました。<br />・仮会員の方は、本会員登録を行ってください<br />・認証キーが正しく設定されているか確認してください	2
1003	認証に失敗しました。<br />・仮会員の方は、本会員登録を行ってください<br />・認証キーが正しく設定されているか確認してください	3
1004	購入済みの商品はありません。	4
1005	ダウンロード可能なアップデータはありません。<br />・ステータスが「入金待ち」の可能性があります<br />・インストールされているモジュールが既に最新版の可能性があります。	5
1006	配信サーバーでエラーが発生しました。	6
1007	ダウンロード完了通知に失敗しました。	7
2001	管理画面の認証に失敗しました。<br />管理画面トップページへ戻り、ログインし直してください。	8
2002	配信サーバーへ接続できません。	9
2003	配信サーバーへ接続できません。	10
2004	配信サーバーでエラーが発生しました。	11
2005	認証キーが設定されていません。<br />・「認証キー設定」で認証キーを設定してください。	12
2006	不正なアクセスです。	13
2007	不正なパラメーターが送信されました。	14
2008	自動アップデートが無効です	15
2009	ファイルの書き込みに失敗しました。<br />・書き込み権限が正しく設定されていません。<br />・data/downloads/tmpディレクトリに書き込み権限があるかどうか確認してください	16
2010	ファイルの書き込みに失敗しました。<br />・「ログ管理」で詳細を確認してください。	17
\.


--
-- Data for Name: mtb_ownersstore_ips; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_ownersstore_ips (id, name, rank) FROM stdin;
0	210.188.195.143	0
\.


--
-- Data for Name: mtb_page_max; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_page_max (id, name, rank) FROM stdin;
10	10	0
20	20	1
30	30	2
40	40	3
50	50	4
60	60	5
70	70	6
80	80	7
90	90	8
100	100	9
\.


--
-- Data for Name: mtb_permission; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_permission (id, name, rank) FROM stdin;
/admin/system/index.php	0	0
/admin/system/delete.php	0	1
/admin/system/input.php	0	2
/admin/system/master.php	0	3
/admin/system/master_delete.php	0	4
/admin/system/master_rank.php	0	5
/admin/system/mastercsv.php	0	6
/admin/system/rank.php	0	7
/admin/entry/index.php	1	8
/admin/entry/delete.php	1	9
/admin/entry/inputzip.php	1	10
/admin/search/delete_note.php	1	11
\.


--
-- Data for Name: mtb_pref; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_pref (id, name, rank) FROM stdin;
1	北海道	1
2	青森県	2
3	岩手県	3
4	宮城県	4
5	秋田県	5
6	山形県	6
7	福島県	7
8	茨城県	8
9	栃木県	9
10	群馬県	10
11	埼玉県	11
12	千葉県	12
13	東京都	13
14	神奈川県	14
15	新潟県	15
16	富山県	16
17	石川県	17
18	福井県	18
19	山梨県	19
20	長野県	20
21	岐阜県	21
22	静岡県	22
23	愛知県	23
24	三重県	24
25	滋賀県	25
26	京都府	26
27	大阪府	27
28	兵庫県	28
29	奈良県	29
30	和歌山県	30
31	鳥取県	31
32	島根県	32
33	岡山県	33
34	広島県	34
35	山口県	35
36	徳島県	36
37	香川県	37
38	愛媛県	38
39	高知県	39
40	福岡県	40
41	佐賀県	41
42	長崎県	42
43	熊本県	43
44	大分県	44
45	宮崎県	45
46	鹿児島県	46
47	沖縄県	47
\.


--
-- Data for Name: mtb_product_list_max; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_product_list_max (id, name, rank) FROM stdin;
15	15件	0
30	30件	1
50	50件	2
\.


--
-- Data for Name: mtb_product_status_color; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_product_status_color (id, name, rank) FROM stdin;
1	#FFFFFF	0
2	#C9C9C9	1
3	#DDE6F2	2
\.


--
-- Data for Name: mtb_product_type; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_product_type (id, name, rank) FROM stdin;
1	通常商品	0
2	ダウンロード商品	1
\.


--
-- Data for Name: mtb_recommend; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_recommend (id, name, rank) FROM stdin;
5	★★★★★	0
4	★★★★	1
3	★★★	2
2	★★	3
1	★	4
\.


--
-- Data for Name: mtb_reminder; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_reminder (id, name, rank) FROM stdin;
1	母親の旧姓は？	0
2	お気に入りのマンガは？	1
3	大好きなペットの名前は？	2
4	初恋の人の名前は？	3
5	面白かった映画は？	4
6	尊敬していた先生の名前は？	5
7	好きな食べ物は？	6
\.


--
-- Data for Name: mtb_review_deny_url; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_review_deny_url (id, name, rank) FROM stdin;
0	http://	0
1	https://	1
2	ttp://	2
3	ttps://	3
\.


--
-- Data for Name: mtb_sex; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_sex (id, name, rank) FROM stdin;
1	男性	0
2	女性	1
\.


--
-- Data for Name: mtb_status; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_status (id, name, rank) FROM stdin;
1	NEW	0
2	残りわずか	1
3	ポイント２倍	2
4	オススメ	3
5	限定品	4
\.


--
-- Data for Name: mtb_status_image; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_status_image (id, name, rank) FROM stdin;
1	img/icon/ico_01.gif	0
2	img/icon/ico_02.gif	1
3	img/icon/ico_03.gif	2
4	img/icon/ico_04.gif	3
5	img/icon/ico_05.gif	4
\.


--
-- Data for Name: mtb_target; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_target (id, name, rank) FROM stdin;
0	Unused	0
1	LeftNavi	1
2	MainHead	2
3	RightNavi	3
4	MainFoot	4
5	TopNavi	5
6	BottomNavi	6
7	HeadNavi	7
8	HeaderTopNavi	8
9	FooterBottomNavi	9
10	HeaderInternalNavi	10
\.


--
-- Data for Name: mtb_taxrule; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_taxrule (id, name, rank) FROM stdin;
1	四捨五入	0
2	切り捨て	1
3	切り上げ	2
\.


--
-- Data for Name: mtb_wday; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_wday (id, name, rank) FROM stdin;
0	日	0
1	月	1
2	火	2
3	水	3
4	木	4
5	金	5
6	土	6
\.


--
-- Data for Name: mtb_work; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_work (id, name, rank) FROM stdin;
0	非稼働	0
1	稼働	1
\.


--
-- Data for Name: mtb_zip; Type: TABLE DATA; Schema: public; Owner: eccube_user
--

COPY mtb_zip (zip_id, zipcode, state, city, town) FROM stdin;
\.


--
-- Name: dtb_api_account_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_api_account
    ADD CONSTRAINT dtb_api_account_pkey PRIMARY KEY (api_account_id);


--
-- Name: dtb_api_config_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_api_config
    ADD CONSTRAINT dtb_api_config_pkey PRIMARY KEY (api_config_id);


--
-- Name: dtb_baseinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_baseinfo
    ADD CONSTRAINT dtb_baseinfo_pkey PRIMARY KEY (id);


--
-- Name: dtb_best_products_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_best_products
    ADD CONSTRAINT dtb_best_products_pkey PRIMARY KEY (best_id);


--
-- Name: dtb_bkup_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_bkup
    ADD CONSTRAINT dtb_bkup_pkey PRIMARY KEY (bkup_name);


--
-- Name: dtb_bloc_device_type_id_filename_key; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_bloc
    ADD CONSTRAINT dtb_bloc_device_type_id_filename_key UNIQUE (device_type_id, filename);


--
-- Name: dtb_bloc_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_bloc
    ADD CONSTRAINT dtb_bloc_pkey PRIMARY KEY (device_type_id, bloc_id);


--
-- Name: dtb_blocposition_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_blocposition
    ADD CONSTRAINT dtb_blocposition_pkey PRIMARY KEY (device_type_id, page_id, target_id, bloc_id);


--
-- Name: dtb_category_count_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_category_count
    ADD CONSTRAINT dtb_category_count_pkey PRIMARY KEY (category_id);


--
-- Name: dtb_category_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_category
    ADD CONSTRAINT dtb_category_pkey PRIMARY KEY (category_id);


--
-- Name: dtb_category_total_count_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_category_total_count
    ADD CONSTRAINT dtb_category_total_count_pkey PRIMARY KEY (category_id);


--
-- Name: dtb_class_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_class
    ADD CONSTRAINT dtb_class_pkey PRIMARY KEY (class_id);


--
-- Name: dtb_classcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_classcategory
    ADD CONSTRAINT dtb_classcategory_pkey PRIMARY KEY (classcategory_id);


--
-- Name: dtb_csv_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_csv
    ADD CONSTRAINT dtb_csv_pkey PRIMARY KEY (no);


--
-- Name: dtb_csv_sql_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_csv_sql
    ADD CONSTRAINT dtb_csv_sql_pkey PRIMARY KEY (sql_id);


--
-- Name: dtb_customer_favorite_products_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_customer_favorite_products
    ADD CONSTRAINT dtb_customer_favorite_products_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: dtb_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_customer
    ADD CONSTRAINT dtb_customer_pkey PRIMARY KEY (customer_id);


--
-- Name: dtb_customer_secret_key_key; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_customer
    ADD CONSTRAINT dtb_customer_secret_key_key UNIQUE (secret_key);


--
-- Name: dtb_deliv_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_deliv
    ADD CONSTRAINT dtb_deliv_pkey PRIMARY KEY (deliv_id);


--
-- Name: dtb_delivfee_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_delivfee
    ADD CONSTRAINT dtb_delivfee_pkey PRIMARY KEY (deliv_id, fee_id);


--
-- Name: dtb_delivtime_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_delivtime
    ADD CONSTRAINT dtb_delivtime_pkey PRIMARY KEY (deliv_id, time_id);


--
-- Name: dtb_holiday_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_holiday
    ADD CONSTRAINT dtb_holiday_pkey PRIMARY KEY (holiday_id);


--
-- Name: dtb_index_list_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_index_list
    ADD CONSTRAINT dtb_index_list_pkey PRIMARY KEY (table_name, column_name);


--
-- Name: dtb_kiyaku_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_kiyaku
    ADD CONSTRAINT dtb_kiyaku_pkey PRIMARY KEY (kiyaku_id);


--
-- Name: dtb_mail_history_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_mail_history
    ADD CONSTRAINT dtb_mail_history_pkey PRIMARY KEY (send_id);


--
-- Name: dtb_mailmaga_template_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_mailmaga_template
    ADD CONSTRAINT dtb_mailmaga_template_pkey PRIMARY KEY (template_id);


--
-- Name: dtb_mailtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_mailtemplate
    ADD CONSTRAINT dtb_mailtemplate_pkey PRIMARY KEY (template_id);


--
-- Name: dtb_maker_count_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_maker_count
    ADD CONSTRAINT dtb_maker_count_pkey PRIMARY KEY (maker_id);


--
-- Name: dtb_maker_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_maker
    ADD CONSTRAINT dtb_maker_pkey PRIMARY KEY (maker_id);


--
-- Name: dtb_member_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_member
    ADD CONSTRAINT dtb_member_pkey PRIMARY KEY (member_id);


--
-- Name: dtb_mobile_ext_session_id_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_mobile_ext_session_id
    ADD CONSTRAINT dtb_mobile_ext_session_id_pkey PRIMARY KEY (session_id);


--
-- Name: dtb_module_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_module
    ADD CONSTRAINT dtb_module_pkey PRIMARY KEY (module_id);


--
-- Name: dtb_module_update_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_module_update_logs
    ADD CONSTRAINT dtb_module_update_logs_pkey PRIMARY KEY (log_id);


--
-- Name: dtb_news_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_news
    ADD CONSTRAINT dtb_news_pkey PRIMARY KEY (news_id);


--
-- Name: dtb_order_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_order_detail
    ADD CONSTRAINT dtb_order_detail_pkey PRIMARY KEY (order_detail_id);


--
-- Name: dtb_order_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_order
    ADD CONSTRAINT dtb_order_pkey PRIMARY KEY (order_id);


--
-- Name: dtb_order_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_order_temp
    ADD CONSTRAINT dtb_order_temp_pkey PRIMARY KEY (order_temp_id);


--
-- Name: dtb_other_deliv_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_other_deliv
    ADD CONSTRAINT dtb_other_deliv_pkey PRIMARY KEY (other_deliv_id);


--
-- Name: dtb_ownersstore_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_ownersstore_settings
    ADD CONSTRAINT dtb_ownersstore_settings_pkey PRIMARY KEY (public_key);


--
-- Name: dtb_pagelayout_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_pagelayout
    ADD CONSTRAINT dtb_pagelayout_pkey PRIMARY KEY (device_type_id, page_id);


--
-- Name: dtb_payment_options_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_payment_options
    ADD CONSTRAINT dtb_payment_options_pkey PRIMARY KEY (deliv_id, payment_id);


--
-- Name: dtb_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_payment
    ADD CONSTRAINT dtb_payment_pkey PRIMARY KEY (payment_id);


--
-- Name: dtb_plugin_hookpoint_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_plugin_hookpoint
    ADD CONSTRAINT dtb_plugin_hookpoint_pkey PRIMARY KEY (plugin_hookpoint_id);


--
-- Name: dtb_plugin_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_plugin
    ADD CONSTRAINT dtb_plugin_pkey PRIMARY KEY (plugin_id);


--
-- Name: dtb_product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_product_categories
    ADD CONSTRAINT dtb_product_categories_pkey PRIMARY KEY (product_id, category_id);


--
-- Name: dtb_product_status_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_product_status
    ADD CONSTRAINT dtb_product_status_pkey PRIMARY KEY (product_status_id, product_id);


--
-- Name: dtb_products_class_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_products_class
    ADD CONSTRAINT dtb_products_class_pkey PRIMARY KEY (product_class_id);


--
-- Name: dtb_products_class_product_id_classcategory_id1_classcatego_key; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_products_class
    ADD CONSTRAINT dtb_products_class_product_id_classcategory_id1_classcatego_key UNIQUE (product_id, classcategory_id1, classcategory_id2);


--
-- Name: dtb_products_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_products
    ADD CONSTRAINT dtb_products_pkey PRIMARY KEY (product_id);


--
-- Name: dtb_recommend_products_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_recommend_products
    ADD CONSTRAINT dtb_recommend_products_pkey PRIMARY KEY (product_id, recommend_product_id);


--
-- Name: dtb_review_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_review
    ADD CONSTRAINT dtb_review_pkey PRIMARY KEY (review_id);


--
-- Name: dtb_send_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_send_customer
    ADD CONSTRAINT dtb_send_customer_pkey PRIMARY KEY (send_id, customer_id);


--
-- Name: dtb_send_history_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_send_history
    ADD CONSTRAINT dtb_send_history_pkey PRIMARY KEY (send_id);


--
-- Name: dtb_session_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_session
    ADD CONSTRAINT dtb_session_pkey PRIMARY KEY (sess_id);


--
-- Name: dtb_shipment_item_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_shipment_item
    ADD CONSTRAINT dtb_shipment_item_pkey PRIMARY KEY (shipping_id, product_class_id, order_id);


--
-- Name: dtb_shipping_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_shipping
    ADD CONSTRAINT dtb_shipping_pkey PRIMARY KEY (shipping_id, order_id);


--
-- Name: dtb_tax_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_tax_rule
    ADD CONSTRAINT dtb_tax_rule_pkey PRIMARY KEY (tax_rule_id);


--
-- Name: dtb_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_templates
    ADD CONSTRAINT dtb_templates_pkey PRIMARY KEY (template_code);


--
-- Name: dtb_update_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY dtb_update
    ADD CONSTRAINT dtb_update_pkey PRIMARY KEY (module_id);


--
-- Name: mtb_allowed_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_allowed_tag
    ADD CONSTRAINT mtb_allowed_tag_pkey PRIMARY KEY (id);


--
-- Name: mtb_auth_excludes_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_auth_excludes
    ADD CONSTRAINT mtb_auth_excludes_pkey PRIMARY KEY (id);


--
-- Name: mtb_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_authority
    ADD CONSTRAINT mtb_authority_pkey PRIMARY KEY (id);


--
-- Name: mtb_constants_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_constants
    ADD CONSTRAINT mtb_constants_pkey PRIMARY KEY (id);


--
-- Name: mtb_country_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_country
    ADD CONSTRAINT mtb_country_pkey PRIMARY KEY (id);


--
-- Name: mtb_customer_order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_customer_order_status
    ADD CONSTRAINT mtb_customer_order_status_pkey PRIMARY KEY (id);


--
-- Name: mtb_customer_status_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_customer_status
    ADD CONSTRAINT mtb_customer_status_pkey PRIMARY KEY (id);


--
-- Name: mtb_db_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_db
    ADD CONSTRAINT mtb_db_pkey PRIMARY KEY (id);


--
-- Name: mtb_delivery_date_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_delivery_date
    ADD CONSTRAINT mtb_delivery_date_pkey PRIMARY KEY (id);


--
-- Name: mtb_device_type_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_device_type
    ADD CONSTRAINT mtb_device_type_pkey PRIMARY KEY (id);


--
-- Name: mtb_disable_logout_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_disable_logout
    ADD CONSTRAINT mtb_disable_logout_pkey PRIMARY KEY (id);


--
-- Name: mtb_disp_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_disp
    ADD CONSTRAINT mtb_disp_pkey PRIMARY KEY (id);


--
-- Name: mtb_job_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_job
    ADD CONSTRAINT mtb_job_pkey PRIMARY KEY (id);


--
-- Name: mtb_magazine_type_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_magazine_type
    ADD CONSTRAINT mtb_magazine_type_pkey PRIMARY KEY (id);


--
-- Name: mtb_mail_magazine_type_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_mail_magazine_type
    ADD CONSTRAINT mtb_mail_magazine_type_pkey PRIMARY KEY (id);


--
-- Name: mtb_mail_template_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_mail_template
    ADD CONSTRAINT mtb_mail_template_pkey PRIMARY KEY (id);


--
-- Name: mtb_mail_tpl_path_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_mail_tpl_path
    ADD CONSTRAINT mtb_mail_tpl_path_pkey PRIMARY KEY (id);


--
-- Name: mtb_mail_type_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_mail_type
    ADD CONSTRAINT mtb_mail_type_pkey PRIMARY KEY (id);


--
-- Name: mtb_mobile_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_mobile_domain
    ADD CONSTRAINT mtb_mobile_domain_pkey PRIMARY KEY (id);


--
-- Name: mtb_order_status_color_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_order_status_color
    ADD CONSTRAINT mtb_order_status_color_pkey PRIMARY KEY (id);


--
-- Name: mtb_order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_order_status
    ADD CONSTRAINT mtb_order_status_pkey PRIMARY KEY (id);


--
-- Name: mtb_ownersstore_err_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_ownersstore_err
    ADD CONSTRAINT mtb_ownersstore_err_pkey PRIMARY KEY (id);


--
-- Name: mtb_ownersstore_ips_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_ownersstore_ips
    ADD CONSTRAINT mtb_ownersstore_ips_pkey PRIMARY KEY (id);


--
-- Name: mtb_page_max_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_page_max
    ADD CONSTRAINT mtb_page_max_pkey PRIMARY KEY (id);


--
-- Name: mtb_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_permission
    ADD CONSTRAINT mtb_permission_pkey PRIMARY KEY (id);


--
-- Name: mtb_pref_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_pref
    ADD CONSTRAINT mtb_pref_pkey PRIMARY KEY (id);


--
-- Name: mtb_product_list_max_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_product_list_max
    ADD CONSTRAINT mtb_product_list_max_pkey PRIMARY KEY (id);


--
-- Name: mtb_product_status_color_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_product_status_color
    ADD CONSTRAINT mtb_product_status_color_pkey PRIMARY KEY (id);


--
-- Name: mtb_product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_product_type
    ADD CONSTRAINT mtb_product_type_pkey PRIMARY KEY (id);


--
-- Name: mtb_recommend_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_recommend
    ADD CONSTRAINT mtb_recommend_pkey PRIMARY KEY (id);


--
-- Name: mtb_reminder_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_reminder
    ADD CONSTRAINT mtb_reminder_pkey PRIMARY KEY (id);


--
-- Name: mtb_review_deny_url_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_review_deny_url
    ADD CONSTRAINT mtb_review_deny_url_pkey PRIMARY KEY (id);


--
-- Name: mtb_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_sex
    ADD CONSTRAINT mtb_sex_pkey PRIMARY KEY (id);


--
-- Name: mtb_status_image_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_status_image
    ADD CONSTRAINT mtb_status_image_pkey PRIMARY KEY (id);


--
-- Name: mtb_status_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_status
    ADD CONSTRAINT mtb_status_pkey PRIMARY KEY (id);


--
-- Name: mtb_target_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_target
    ADD CONSTRAINT mtb_target_pkey PRIMARY KEY (id);


--
-- Name: mtb_taxrule_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_taxrule
    ADD CONSTRAINT mtb_taxrule_pkey PRIMARY KEY (id);


--
-- Name: mtb_wday_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_wday
    ADD CONSTRAINT mtb_wday_pkey PRIMARY KEY (id);


--
-- Name: mtb_work_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_work
    ADD CONSTRAINT mtb_work_pkey PRIMARY KEY (id);


--
-- Name: mtb_zip_pkey; Type: CONSTRAINT; Schema: public; Owner: eccube_user; Tablespace:
--

ALTER TABLE ONLY mtb_zip
    ADD CONSTRAINT mtb_zip_pkey PRIMARY KEY (zip_id);


--
-- Name: dtb_customer_mobile_phone_id_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_customer_mobile_phone_id_key ON dtb_customer USING btree (mobile_phone_id);


--
-- Name: dtb_mobile_ext_session_id_create_date_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_mobile_ext_session_id_create_date_key ON dtb_mobile_ext_session_id USING btree (create_date);


--
-- Name: dtb_mobile_ext_session_id_param_key_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_mobile_ext_session_id_param_key_key ON dtb_mobile_ext_session_id USING btree (param_key);


--
-- Name: dtb_mobile_ext_session_id_param_value_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_mobile_ext_session_id_param_value_key ON dtb_mobile_ext_session_id USING btree (param_value);


--
-- Name: dtb_mobile_ext_session_id_url_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_mobile_ext_session_id_url_key ON dtb_mobile_ext_session_id USING btree (url);


--
-- Name: dtb_order_detail_product_id_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_order_detail_product_id_key ON dtb_order_detail USING btree (product_id);


--
-- Name: dtb_send_customer_customer_id_key; Type: INDEX; Schema: public; Owner: eccube_user; Tablespace:
--

CREATE INDEX dtb_send_customer_customer_id_key ON dtb_send_customer USING btree (customer_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
