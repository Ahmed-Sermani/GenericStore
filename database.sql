CREATE TABLE public."User"
(
    "ID" uuid NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    arablic_name text COLLATE pg_catalog."default" NOT NULL,
    email character varying(60) COLLATE pg_catalog."default",
    phone_number character varying(13) COLLATE pg_catalog."default" NOT NULL,
    status character varying(10) COLLATE pg_catalog."default",
    created_date date NOT NULL,
    last_modified date,
    logins smallint,
    last_ip inet NOT NULL,
    token bit varying(40) NOT NULL,
    token_created timestamp(0) without time zone NOT NULL,
    token_expires timestamp(0) without time zone NOT NULL,
    signature character varying(245) COLLATE pg_catalog."default",
    CONSTRAINT "Category_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE public."User"
    OWNER to ewdybiwsjbqctb;


    -- Table: public."Admin"

-- DROP TABLE public."Admin";

CREATE TABLE public."Admin"
(
    "ID" uuid NOT NULL,
    user_name text COLLATE pg_catalog."default" NOT NULL,
    password text COLLATE pg_catalog."default" NOT NULL,
    created_date date NOT NULL,
    expiry_date date NOT NULL,
    CONSTRAINT "Admin_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE public."Admin"
    OWNER to ewdybiwsjbqctb;