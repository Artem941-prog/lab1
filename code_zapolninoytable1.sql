-- Table: public.Departments

-- DROP TABLE IF EXISTS public."Departments";

CREATE TABLE IF NOT EXISTS public."Departments"
(
    department_id serial NOT NULL,
    faculty_id integer NOT NULL,
    department_name character varying COLLATE pg_catalog."default" NOT NULL,
    head_of_department text COLLATE pg_catalog."default" NOT NULL,
    graduating_department boolean NOT NULL,
    website text COLLATE pg_catalog."default",
    phone text COLLATE pg_catalog."default",
    CONSTRAINT "Departments_pkey" PRIMARY KEY (department_id),
    CONSTRAINT fk_departments_faculties FOREIGN KEY (faculty_id)
        REFERENCES public."Faculties" (faculty_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Departments"
    OWNER to postgres;