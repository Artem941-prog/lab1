-- Table: public.Faculties

-- DROP TABLE IF EXISTS public."Faculties";

CREATE TABLE IF NOT EXISTS public."Faculties"
(
    faculty_id serial NOT NULL,
    faculty_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    foundation_date date NOT NULL,
    activity_type text COLLATE pg_catalog."default" NOT NULL,
    max_students integer NOT NULL,
    CONSTRAINT "Faculties_pkey" PRIMARY KEY (faculty_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Faculties"
    OWNER to postgres;