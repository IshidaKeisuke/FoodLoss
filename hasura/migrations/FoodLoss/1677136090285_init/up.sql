SET check_function_bodies = false;
CREATE TABLE public.clerks (
    "ID" integer NOT NULL,
    "Name" bpchar NOT NULL,
    "Clerk_number" bpchar NOT NULL
);
CREATE SEQUENCE public."clerks_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."clerks_ID_seq" OWNED BY public.clerks."ID";
CREATE TABLE public.shops (
    "ID" integer NOT NULL,
    "Name" bpchar NOT NULL,
    "Country" bpchar NOT NULL,
    "Prefecture" bpchar NOT NULL,
    "City" bpchar NOT NULL,
    "Address" bpchar NOT NULL,
    "Clerk_id" integer NOT NULL,
    "Post_id" integer NOT NULL,
    "Product_id" integer NOT NULL
);
CREATE SEQUENCE public."shops_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."shops_ID_seq" OWNED BY public.shops."ID";
ALTER TABLE ONLY public.clerks ALTER COLUMN "ID" SET DEFAULT nextval('public."clerks_ID_seq"'::regclass);
ALTER TABLE ONLY public.shops ALTER COLUMN "ID" SET DEFAULT nextval('public."shops_ID_seq"'::regclass);
ALTER TABLE ONLY public.clerks
    ADD CONSTRAINT clerks_pkey PRIMARY KEY ("ID");
ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY ("ID");
