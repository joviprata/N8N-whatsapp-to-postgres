CREATE TABLE IF NOT EXISTS public.numeros_whatsapp
(
    id_correspondente bigint NOT NULL,
    celular character varying(250) COLLATE pg_catalog."default" NOT NULL,
    data_in timestamp without time zone NOT NULL,
    data_out timestamp without time zone,
    eh_admin boolean NOT NULL,
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    CONSTRAINT id_pk_numeros_whatsapp PRIMARY KEY (id),
    CONSTRAINT id_correspondente_fk_numeros_whatsapp FOREIGN KEY (id_correspondente)
        REFERENCES public.grupos_whatsapp (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE RESTRICT
)
