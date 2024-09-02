CREATE MATERIALIZED VIEW IF NOT EXISTS public.mat_view_numeros_whatsapp
TABLESPACE pg_default
AS
 SELECT g.expert,
    g.nome_campanha,
    g.nome_grupo,
    n.celular,
    n.data_in,
    n.data_out,
    n.eh_admin
   FROM numeros_whatsapp n
     JOIN grupos_whatsapp g ON n.id_correspondente = g.id
WITH DATA;
