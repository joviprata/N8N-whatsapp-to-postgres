CREATE TABLE IF NOT EXISTS public.grupos_whatsapp
(
    expert character varying(250) COLLATE pg_catalog."default",
    nome_campanha character varying(1000) COLLATE pg_catalog."default",
    numero_grupo integer,
    nome_grupo character varying(250) COLLATE pg_catalog."default",
    id_grupo character varying(250) COLLATE pg_catalog."default" NOT NULL,
    link_grupo character varying(2500) COLLATE pg_catalog."default",
    versao_lancamento integer,
    criador_grupo character varying(250) COLLATE pg_catalog."default",
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    CONSTRAINT id_pk_grupos_whatsapp PRIMARY KEY (id)
)
