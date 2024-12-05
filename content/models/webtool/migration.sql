--
-- Update Entity.type
--
update entity set type = 'AST' where type = 'AS';
update entity set type = 'C5' where type = 'C5';
update entity set type = 'CE' where type = 'CE';
update entity set type = 'CON' where type = 'CN';
update entity set type = 'CPT' where type = 'CP';
update entity set type = 'CRP' where type = 'CR';
update entity set type = 'CTY' where type = 'CT';
update entity set type = 'CXN' where type = 'CX';
update entity set type = 'DOC' where type = 'DC';
update entity set type = 'DOC' where type = 'DO';
update entity set type = 'FE' where type = 'FE';
update entity set type = 'FRM' where type = 'FR';
update entity set type = 'GLB' where type = 'GL';
update entity set type = 'GEN' where type = 'GR';
update entity set type = 'GTY' where type = 'GT';
update entity set type = 'ITY' where type = 'IT';
update entity set type = 'LEM' where type = 'LM';
update entity set type = 'LTY' where type = 'LT';
update entity set type = 'LU' where type = 'LU';
update entity set type = 'LEX' where type = 'LX';
update entity set type = 'CNT' where type = 'NT';
update entity set type = 'POS' where type = 'PS';
update entity set type = 'CTY' where type = 'PT';
update entity set type = 'QLA' where type = 'QL';
update entity set type = 'QLR' where type = 'QR';
update entity set type = 'RGT' where type = 'RG';
update entity set type = 'RTY' where type = 'RT';
update entity set type = 'SCP' where type = 'SC';
update entity set type = 'STY' where type = 'ST';
update entity set type = 'TMP' where type = 'TP';
update entity set type = 'TYP' where type = 'TY';
update entity set type = 'UDF' where type = 'UF';
update entity set type = 'UDP' where type = 'UP';
update entity set type = 'UDR' where type = 'UR';
update entity set type = 'UDF' where type = 'UV';
update entity set type = 'WFM' where type = 'WF';

--
-- Update AnnotationSet: idLU/idConstruction
--

update annotationset a
join lu on (a.idEntityRelated = lu.idEntity)
set a.idLU = lu.idLu
where idEntityRelated is not null;

update annotationset a
join construction c on (a.idEntityRelated = c.idEntity)
set a.idConstruction = c.idConstruction
where idEntityRelated is not null;

--
-- New RelationGroup/RelationType
--

select relationgroup_create('{"entry":"rgp_object","name":"Object"}');
select relationgroup_create('{"entry":"rgp_annotation","name":"Annotation"}');
select relationgroup_create('{"entry":"rgp_structure","name":"Structure"}');

--select relationtype_create('{"entry":"rel_translation","name":"Translation","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_description","name":"Description","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_video_sentence","name":"Video_Sentence","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_video_dynobj","name":"Video_DynObject","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_image_staobj","name":"Image_StaticObject","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_image_sentence","name":"Image_Sentence","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_dynobj_bbox","name":"DynObject_BBox","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_staobj_bbox","name":"StaticObject_BBox","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_sentence_time","name":"Sentence_TimeSpan","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_sentence_textspan","name":"Sentence_TextSpan","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_document_sentence","name":"Document_Sentence","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_document_video","name":"Document_Video","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_document_image","name":"Document_Image","relationGroup":"rgp_object"}');
--select relationtype_create('{"entry":"rel_annotation","name":"Object_Annotation","relationGroup":"rgp_annotation"}');

-- routine update at november/24
select relationtype_create('{"nameCanonical":"translation","nameDirect":"Translation","nameInverse":"Translation","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"description","nameDirect":"Description","nameInverse":"Description","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"video_sentence","nameDirect":"Video_Sentence","nameInverse":"Video_Sentence","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"video_dynobj","nameDirect":"Video_DynObject","nameInverse":"Video_DynObject","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"image_staobj","nameDirect":"Image_StaticObject","nameInverse":"Image_StaticObject","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"image_sentence","nameDirect":"Image_Sentence","nameInverse":"Image_Sentence","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"dynobj_bbox","nameDirect":"DynObject_BBox","nameInverse":"DynObject_BBox","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"staobj_bbox","nameDirect":"StaticObject_BBox","nameInverse":"StaticObject_BBox","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"sentence_time","nameDirect":"Sentence_TimeSpan","nameInverse":"Sentence_TimeSpan","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"sentence_textspan","nameDirect":"Sentence_TextSpan","nameInverse":"Sentence_TextSpan","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_sentence","nameDirect":"Document_Sentence","nameInverse":"Document_Sentence","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_video","nameDirect":"Document_Video","nameInverse":"Document_Video","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_image","nameDirect":"Document_Image","nameInverse":"Document_Image","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');
select relationtype_create('{"nameCanonical":"annotation","nameDirect":"Object_Annotation","nameInverse":"Object_Annotation","color":"#000000","prefix":"","idRelationGroup":12,"idUser":6}');

--
-- new Group: MANAGER
--

insert into `group`(name, description) values ('MANAGER','Task Manager');

--
-- generic user to Default Task
--

insert into user(idUser,login,passMD5,status,name,email,idLanguage) values (-2,'generic',md5('generic@fnbr'),1,'Generic User','generic.user@ufjf.br',1);

--
-- Project/Dataset/Task/UserTask
--

-- Project: Default
-- Dataset: Default
-- Task: Default

insert into project(name, description) values ('Default Project', 'Default Project');
select dataset_create('{"name":"Default dataset","description":"","idProject":1,"idUser":6}');
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'Default Task','Default Task',(select idDataset from dataset where name = 'Default Dataset'));

-- associate all corpus to Dataset Default, until correct projecs be created

select idDataset into @idDataset from dataset where name = 'Default Dataset';
update corpus set idDataset = @idDataset where idCorpus > 0;
delete from dataset_corpus where idCorpus > 0;
insert into dataset_corpus (idDataset, idCorpus) select idDataset,idCorpus from corpus;

-- create projects based on current annotationset

-- static

insert into project(name, description) values ('Corpus prime', 'Corpus prime');
insert into project(name, description) values ('Corpus PTT Full', 'Corpus PTT Full');
insert into project(name, description) values ('Event-Frame test', 'Event-Frame test');
insert into project(name, description) values ('Flickr30k', 'Flickr30k');
insert into project(name, description) values ('Flickr30k German', 'Flickr30k German');
insert into project(name, description) values ('Flickr30k PTO', 'Flickr30k PTO');
insert into project(name, description) values ('Framed30k DET', 'Framed30k DET');
insert into project(name, description) values ('NLPerspectives', 'NLPerspectives');
insert into project(name, description) values ('Oficina', 'Oficina');
insert into project(name, description) values ('Projekt Bildannotation', 'Projekt Bildannotation');
insert into project(name, description) values ('Projekt Leipzig', 'Projekt Leipzig');
insert into project(name, description) values ('Test static frame', 'Test static frame');

-- dynamic

insert into project(name, description) values ('ppm_se01_ep06', 'ppm_se01_ep06');
insert into project(name, description) values ('Pedro_pelo_mundo', 'crp_pedro_pelo_mundo');
insert into project(name, description) values ('Hoje_eu_nao_quero', 'crp_hoje_eu_nao_quero');
insert into project(name, description) values ('Curso_dataset', 'crp_curso_dataset');
insert into project(name, description) values ('AD alternativa curta_hoje_eu_não_quero', 'crp_ad alternativa curta_hoje_eu_não_quero');
insert into project(name, description) values ('Charon_demo', 'crp_charon_demo');
insert into project(name, description) values ('Curta_metragem_enqvs_linguas', 'crp_curta_metragem_enqvs_linguas');
insert into project(name, description) values ('Pedro_pelo_mundo_eventos', 'crp_pedro_pelo_mundo_eventos');


-- create dataset for projects - one dataset -> one corpus

insert into dataset(name,description,idProject) values ('crp_corpus-prime-com-sentença', '', (select idProject from project where  name = 'Corpus prime'));
insert into dataset(name,description,idProject) values ('crp_corpus-prime-sem-sentença', '', (select idProject from project where  name = 'Corpus prime'));
insert into dataset(name,description,idProject) values ('crp_corpus_ptt_full', '', (select idProject from project where  name = 'Corpus PTT Full'));
insert into dataset(name,description,idProject) values ('crp_event_frame_test_com_sentença', '', (select idProject from project where  name = 'Event-Frame test'));
insert into dataset(name,description,idProject) values ('crp_event_frame_test_sem_sentença', '', (select idProject from project where  name = 'Event-Frame test'));
insert into dataset(name,description,idProject) values ('crp_flickr30k', '', (select idProject from project where  name = 'Flickr30k'));
insert into dataset(name,description,idProject) values ('crp_flickr30k-1k-1', '', (select idProject from project where  name = 'Flickr30k'));
insert into dataset(name,description,idProject) values ('crp_flickr30k-1k-2', '', (select idProject from project where  name = 'Flickr30k'));
insert into dataset(name,description,idProject) values ('crp_flickr30k_full', '', (select idProject from project where  name = 'Flickr30k'));
insert into dataset(name,description,idProject) values ('crp_flickr30k_german', '', (select idProject from project where  name = 'Flickr30k German'));
insert into dataset(name,description,idProject) values ('crp_flickr30k_pto', '', (select idProject from project where  name = 'Flickr30k PTO'));
insert into dataset(name,description,idProject) values ('crp_framed_30k-det', '', (select idProject from project where  name = 'Framed30k DET'));
insert into dataset(name,description,idProject) values ('crp_nlperspectives-29k', '', (select idProject from project where  name = 'NLPerspectives'));
insert into dataset(name,description,idProject) values ('crp_nlperspectives-2k', '', (select idProject from project where  name = 'NLPerspectives'));
insert into dataset(name,description,idProject) values ('crp_oficina_com_sentenca_1', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_com_sentenca_2', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_com_sentenca_3', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_com_sentenca_4', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_sem_sentenca_1', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_sem_sentenca_2', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_sem_sentenca_3', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_oficina_sem_sentenca_4', '', (select idProject from project where  name = 'Oficina'));
insert into dataset(name,description,idProject) values ('crp_projekt_bildannotation', '', (select idProject from project where  name = 'Projekt Bildannotation'));
insert into dataset(name,description,idProject) values ('crp_projekt_leipzig', '', (select idProject from project where  name = 'Projekt Leipzig'));
insert into dataset(name,description,idProject) values ('crp_projekt_leipzig_2', '', (select idProject from project where  name = 'Projekt Leipzig'));
insert into dataset(name,description,idProject) values ('crp_projekt_leipzig_2_eno', '', (select idProject from project where  name = 'Projekt Leipzig'));
insert into dataset(name,description,idProject) values ('crp_test_static_frame', '', (select idProject from project where  name = 'Test static frame'));

insert into dataset(name,description,idProject) values ('crp_ppm_se01_ep06', '', (select idProject from project where  name = 'ppm_se01_ep06'));
insert into dataset(name,description,idProject) values ('crp_pedro_pelo_mundo', '', (select idProject from project where  name = 'Pedro_pelo_mundo'));
insert into dataset(name,description,idProject) values ('crp_hoje_eu_nao_quero', '', (select idProject from project where  name = 'Hoje_eu_nao_quero'));
insert into dataset(name,description,idProject) values ('crp_curso_dataset', '', (select idProject from project where  name = 'Curso_dataset'));
insert into dataset(name,description,idProject) values ('crp_ad alternativa curta_hoje_eu_não_quero', '', (select idProject from project where  name = 'AD alternativa curta_hoje_eu_não_quero'));
insert into dataset(name,description,idProject) values ('crp_charon_demo', '', (select idProject from project where  name = 'Charon_demo'));
insert into dataset(name,description,idProject) values ('crp_curta_metragem_enqvs_linguas', '', (select idProject from project where  name = 'Curta_metragem_enqvs_linguas'));
insert into dataset(name,description,idProject) values ('crp_pedro_pelo_mundo_eventos', '', (select idProject from project where  name = 'Pedro_pelo_mundo_eventos'));


-- associate datase with corpus

insert into dataset_corpus(idDataset,idCorpus) values
((select idDataset from dataset where name = 'crp_corpus-prime-com-sentença'),(select idCorpus from corpus where entry = 'crp_corpus-prime-com-sentença')),
((select idDataset from dataset where name = 'crp_corpus-prime-sem-sentença'),(select idCorpus from corpus where entry = 'crp_corpus-prime-sem-sentença')),
((select idDataset from dataset where name = 'crp_corpus_ptt_full'),(select idCorpus from corpus where entry = 'crp_corpus_ptt_full')),
((select idDataset from dataset where name = 'crp_event_frame_test_com_sentença'),(select idCorpus from corpus where entry = 'crp_event_frame_test_com_sentença')),
((select idDataset from dataset where name = 'crp_event_frame_test_sem_sentença'),(select idCorpus from corpus where entry = 'crp_event_frame_test_sem_sentença')),
((select idDataset from dataset where name = 'crp_flickr30k'),(select idCorpus from corpus where entry = 'crp_flickr30k')),
((select idDataset from dataset where name = 'crp_flickr30k-1k-1'),(select idCorpus from corpus where entry = 'crp_flickr30k-1k-1')),
((select idDataset from dataset where name = 'crp_flickr30k-1k-2'),(select idCorpus from corpus where entry = 'crp_flickr30k-1k-2')),
((select idDataset from dataset where name = 'crp_flickr30k_full'),(select idCorpus from corpus where entry = 'crp_flickr30k_full')),
((select idDataset from dataset where name = 'crp_flickr30k_german'),(select idCorpus from corpus where entry = 'crp_flickr30k_german')),
((select idDataset from dataset where name = 'crp_flickr30k_pto'),(select idCorpus from corpus where entry = 'crp_flickr30k_pto')),
((select idDataset from dataset where name = 'crp_framed_30k-det'),(select idCorpus from corpus where entry = 'crp_framed_30k-det')),
((select idDataset from dataset where name = 'crp_nlperspectives-29k'),(select idCorpus from corpus where entry = 'crp_nlperspectives-29k')),
((select idDataset from dataset where name = 'crp_nlperspectives-2k'),(select idCorpus from corpus where entry = 'crp_nlperspectives-2k')),
((select idDataset from dataset where name = 'crp_oficina_com_sentenca_1'),(select idCorpus from corpus where entry = 'crp_oficina_com_sentenca_1')),
((select idDataset from dataset where name = 'crp_oficina_com_sentenca_2'),(select idCorpus from corpus where entry = 'crp_oficina_com_sentenca_2')),
((select idDataset from dataset where name = 'crp_oficina_com_sentenca_3'),(select idCorpus from corpus where entry = 'crp_oficina_com_sentenca_3')),
((select idDataset from dataset where name = 'crp_oficina_com_sentenca_4'),(select idCorpus from corpus where entry = 'crp_oficina_com_sentenca_4')),
((select idDataset from dataset where name = 'crp_oficina_sem_sentenca_1'),(select idCorpus from corpus where entry = 'crp_oficina_sem_sentenca_1')),
((select idDataset from dataset where name = 'crp_oficina_sem_sentenca_2'),(select idCorpus from corpus where entry = 'crp_oficina_sem_sentenca_2')),
((select idDataset from dataset where name = 'crp_oficina_sem_sentenca_3'),(select idCorpus from corpus where entry = 'crp_oficina_sem_sentenca_3')),
((select idDataset from dataset where name = 'crp_oficina_sem_sentenca_4'),(select idCorpus from corpus where entry = 'crp_oficina_sem_sentenca_4')),
((select idDataset from dataset where name = 'crp_projekt_bildannotation'),(select idCorpus from corpus where entry = 'crp_projekt_bildannotation')),
((select idDataset from dataset where name = 'crp_projekt_leipzig'),(select idCorpus from corpus where entry = 'crp_projekt_leipzig')),
((select idDataset from dataset where name = 'crp_projekt_leipzig_2'),(select idCorpus from corpus where entry = 'crp_projekt_leipzig_2')),
((select idDataset from dataset where name = 'crp_projekt_leipzig_2_eno'),(select idCorpus from corpus where entry = 'crp_projekt_leipzig_2_eno')),
((select idDataset from dataset where name = 'crp_test_static_frame'),(select idCorpus from corpus where entry = 'crp_test_static_frame')),
((select idDataset from dataset where name = 'crp_ppm_se01_ep06'),(select idCorpus from corpus where entry = 'crp_ppm_se01_ep06')),
((select idDataset from dataset where name = 'crp_pedro_pelo_mundo'),(select idCorpus from corpus where entry = 'crp_pedro_pelo_mundo')),
((select idDataset from dataset where name = 'crp_hoje_eu_nao_quero'),(select idCorpus from corpus where entry = 'crp_hoje_eu_nao_quero')),
((select idDataset from dataset where name = 'crp_curso_dataset'),(select idCorpus from corpus where entry = 'crp_curso_dataset')),
((select idDataset from dataset where name = 'crp_ad alternativa curta_hoje_eu_não_quero'),(select idCorpus from corpus where entry = 'crp_ad alternativa curta_hoje_eu_não_quero')),
((select idDataset from dataset where name = 'crp_charon_demo'),(select idCorpus from corpus where entry = 'crp_charon_demo')),
((select idDataset from dataset where name = 'crp_curta_metragem_enqvs_linguas'),(select idCorpus from corpus where entry = 'crp_curta_metragem_enqvs_linguas')),
((select idDataset from dataset where name = 'crp_pedro_pelo_mundo_eventos'),(select idCorpus from corpus where entry = 'crp_pedro_pelo_mundo_eventos'));

-- create a task for each dataset

insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_corpus-prime-com-sentença', '', (select idDataset from dataset where name = 'crp_corpus-prime-com-sentença'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_corpus-prime-sem-sentença', '', (select idDataset from dataset where name = 'crp_corpus-prime-sem-sentença'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_corpus_ptt_full', '', (select idDataset from dataset where name = 'crp_corpus_ptt_full'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_event_frame_test_com_sentença', '', (select idDataset from dataset where name = 'crp_event_frame_test_com_sentença'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_event_frame_test_sem_sentença', '', (select idDataset from dataset where name = 'crp_event_frame_test_sem_sentença'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k', '',(select idDataset from dataset where name = 'crp_flickr30k'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k-1k-1', '',(select idDataset from dataset where name = 'crp_flickr30k-1k-1'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k-1k-2', '',(select idDataset from dataset where name = 'crp_flickr30k-1k-2'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k_full', '',(select idDataset from dataset where name = 'crp_flickr30k_full'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k_german', '',(select idDataset from dataset where name = 'crp_flickr30k_german'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_flickr30k_pto', '',(select idDataset from dataset where name = 'crp_flickr30k_pto'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_framed_30k-det', '',(select idDataset from dataset where name = 'crp_framed_30k-det'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_nlperspectives-29k', '',(select idDataset from dataset where name = 'crp_nlperspectives-29k'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_nlperspectives-2k', '',(select idDataset from dataset where name = 'crp_nlperspectives-2k'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_com_sentenca_1', '',(select idDataset from dataset where name = 'crp_oficina_com_sentenca_1'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_com_sentenca_2', '',(select idDataset from dataset where name = 'crp_oficina_com_sentenca_2'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_com_sentenca_3', '',(select idDataset from dataset where name = 'crp_oficina_com_sentenca_3'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_com_sentenca_4', '',(select idDataset from dataset where name = 'crp_oficina_com_sentenca_4'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_sem_sentenca_1', '',(select idDataset from dataset where name = 'crp_oficina_sem_sentenca_1'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_sem_sentenca_2', '',(select idDataset from dataset where name = 'crp_oficina_sem_sentenca_2'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_sem_sentenca_3', '',(select idDataset from dataset where name = 'crp_oficina_sem_sentenca_3'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_oficina_sem_sentenca_4', '',(select idDataset from dataset where name = 'crp_oficina_sem_sentenca_4'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_projekt_bildannotation', '',(select idDataset from dataset where name = 'crp_projekt_bildannotation'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_projekt_leipzig', '',(select idDataset from dataset where name = 'crp_projekt_leipzig'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_projekt_leipzig_2', '',(select idDataset from dataset where name = 'crp_projekt_leipzig_2'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_projekt_leipzig_2_eno', '',(select idDataset from dataset where name = 'crp_projekt_leipzig_2_eno'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_test_static_frame', '',(select idDataset from dataset where name = 'crp_test_static_frame'));

insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_ppm_se01_ep06', '',(select idDataset from dataset where name = 'crp_ppm_se01_ep06'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_pedro_pelo_mundo', '',(select idDataset from dataset where name = 'crp_pedro_pelo_mundo'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_hoje_eu_nao_quero', '',(select idDataset from dataset where name = 'crp_hoje_eu_nao_quero'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_curso_dataset', '',(select idDataset from dataset where name = 'crp_curso_dataset'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_ad alternativa curta_hoje_eu_não_quero', '',(select idDataset from dataset where name = 'crp_ad alternativa curta_hoje_eu_não_quero'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_charon_demo', '',(select idDataset from dataset where name = 'crp_charon_demo'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_curta_metragem_enqvs_linguas', '',(select idDataset from dataset where name = 'crp_curta_metragem_enqvs_linguas'));
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'crp_pedro_pelo_mundo_eventos', '',(select idDataset from dataset where name = 'crp_pedro_pelo_mundo_eventos'));

-- create a usertask para o Usuário -2 em todas as Tasks

insert into usertask(idUser, idTask, isIgnore, isActive, createdAt)
select -2, idTask, 0, 1, now()
from task;

-- create a usertask para a Default Task (para a anotação de textos)

insert into usertask(idUser, idTask, isIgnore, isActive, createdAt)
values (-2, (select idTask from task where name = 'Default Task'),0,1, now());

-- create usertask_document para o usuário -2 para todos os documents associated to a task

insert into usertask_document(idUserTask, idDocument)
select ut.idUserTask, d.idDocument
from task t
    join usertask ut on (ut.idTask = t.idTask)
join corpus c on (t.name = c.entry)
join document d on (d.idCorpus = c.idcorpus);



--
-- Objects migration
--


-- copy image from imagemm

insert into image(idImage, name, width, height, depth, idAnnotationObject, idLanguage)
select idImageMM, name, width, height, depth, 0, 0
from imagemm;


-- scripts PHP
--

-- Document/Sentence

-- webtool40_update_sentence_object
-- webtool40_update_document_object
-- webtool40_create_rel_sentence_document


-- create video and create relation document/video

--
-- script PHP webtool40_create_video
--

-- copy staticobject (which represents Flickr30k entities)

insert into staticobject(scene, idFlickr30kEntitiesChain, nobndbox, idAnnotationObject)
select scene, idFlickr30kEntitiesChain, nobndbox, 0
from staticobjectmm where idStaticObjectMM in (
    select max(idStaticObjectMM)
    from staticobjectmm
    where idFlickr30kEntitiesChain is not null
    group by idFlickr30kEntitiesChain
);

update
    annotationobject o
    set o.externalId = (select s.idFlickr30kEntitiesChain from staticobject s where s.idAnnotationObject = o.idAnnotationObject)
    where (o.type = 'SOB');


update staticobject so
join staticobjectmm som on (so.idFlickr30kEntitiesChain = som.idFlickr30kEntitiesChain)
join staticobjectsentencemm sos on (sos.idStaticObjectMM = som.idStaticObjectMM)
set so.name = sos.name
where so.idStaticObject > 0;


-- copy boundingbox and associate to staticobject
--
-- script PHP webtool40_create_boundingbox
--

-- create textspan and relate to sentence
--
-- script PHP webtool40_create_textspan_static_anno
--

-- register static annotations for StaticObject (just FrameElements)
-- UserTask based on the corpus entry

update staticobjectmm set idFlickr30kEntitiesChain=0 where idStaticObjectMM = -1;

insert into annotation (idRelationType, idAnnotationObject, idEntity, idUserTask)
select 229, so.idAnnotationObject, fe.idEntity, ut.idUserTask
from staticannotationmm sam
join frameelement fe on (sam.idFrameElement = fe.idFrameElement)
join staticobjectsentencemm sos on (sam.idStaticObjectSentenceMM = sos.idStaticObjectSentenceMM)
join staticsentencemm ssm on (sos.idStaticSentenceMM = ssm.idStaticSentenceMM)
join staticobjectmm som on (sos.idStaticObjectMM = som.idStaticObjectMM)
join staticobject so on (som.idFlickr30kEntitiesChain = so.idFlickr30kEntitiesChain)
join document d on (ssm.idDocument = d.idDocument)
join corpus c on (d.idCorpus = c.idCorpus)
join task t on (c.entry = t.name)
join usertask ut on (t.idTask = ut.idTask)
where (sam.idFrameElement is not null)
and (ut.iduser = -2);

-- create dynamicobject from dynamicobjectmm
--
-- script PHP webtool40_create_dynamic_object
--

-- CORPUS ANNOTATION
--
-- create textspan related to corpus annotation
--
--
-- script PHP webtool40_create_textspan_corpus_anno
--

-- update annotationset to document_sentence instead of just sentence

update annotationset a
    set a.idAnnotationObjectRelation = (select min(ds.idDocumentSentence)
                                        from view_document_sentence ds
                                        where (a.idSentence = ds.idSentence))
where (a.idAnnotationSet > 0);


--
-- Relations
--

-- image/sentence (Flickr30k) rel_image_sentence
-- based on table staticsentencemm

insert into annotationobjectrelation(idRelationType, idAnnotationObject1, idAnnotationObject2)
select 222, i.idAnnotationObject idImageObject, s.idAnnotationObject idSentenceObject
from staticsentencemm ssm
join imagemm im on (ssm.idImagemm = im.idImagemm)
join image i on (im.name = i.name)
join sentence s on (ssm.idSentence = s.idSentence);


-- sentence/timespan rel_sentence_time
-- based on table dynamicsentencemm
--
-- script PHP webtool40_create_timespan
--

-- document/wordmm

update wordmm w
join dynamicsentencemm ds on (w.idDynamicSentenceMM = ds.idDynamicSentenceMM)
join documentmm dm on (w.idDocumentMM = dm.idDocumentMM)
join view_document_sentence vds on (ds.idSentence = vds.idSentence) and (dm.idDocument = vds.idDocument)
    set w.idDocumentSentence = vds.idDocumentSentence
where w.idWordMM > 0;

update wordmm w
join documentmm dm on (w.idDocumentMM = dm.idDocumentMM)
join view_document_video dv on (dm.idDocument = dv.idDocument)
    set w.idVideo = dv.idVideo
where w.idWordMM > 0;

-- sentence.idOriginMM based on dynamicsentencemm

update sentence s
join dynamicsentencemm ds on (s.idSentence = ds.idSentence)
    set s.idOriginMM = ds.idOriginMM
where ds.idSentence > 0;










