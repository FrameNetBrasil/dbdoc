===
===  MFN database
===
--
-- before: update MFN to fnbr37
--

start transaction;

insert into entity (alias, type)
select entry, 'TY'
from type;

update type x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idType > 0;

insert into entity (alias, type)
select entry, 'CR'
from corpus;

update corpus x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idCorpus > 0;

insert into entity (alias, type)
select entry, 'DC'
from document;

update document x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idDocument > 0;

insert into entity (alias, type)
select entry, 'GR'
from genre;

update genre x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idGenre > 0;

insert into entity (alias, type)
select entry, 'GT'
from genretype;

update genretype x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idGenreType > 0;

insert into entity (alias, type)
select entry, 'RG'
from relationgroup;

update relationgroup x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idRelationGroup > 0;


insert into entity (alias, type)
select entry, 'RT'
from relationtype;

update relationtype x
join entity e on (x.entry = e.alias)
set x.idEntity = e.idEntity
where x.idRelationType > 0;

commit;



start transaction;
update entry e set e.idEntity = (select x.idEntity from `type` x where x.entry=e.entry) where (e.entry in (select entry from `type`));
update entry e set e.idEntity = (select x.idEntity from typeinstance x where x.entry=e.entry) where (e.entry in (select entry from typeinstance));
update entry e set e.idEntity = (select x.idEntity from constructionelement x where x.entry=e.entry) where (e.entry in (select entry from constructionelement));
update entry e set e.idEntity = (select x.idEntity from concept x where x.entry=e.entry) where (e.entry in (select entry from concept));
update entry e set e.idEntity = (select x.idEntity from construction x where x.entry=e.entry) where (e.entry in (select entry from construction));
update entry e set e.idEntity = (select x.idEntity from domain x where x.entry=e.entry) where (e.entry in (select entry from domain));
update entry e set e.idEntity = (select x.idEntity from frameelement x where x.entry=e.entry) where (e.entry in (select entry from frameelement));
update entry e set e.idEntity = (select x.idEntity from frame x where x.entry=e.entry) where (e.entry in (select entry from frame));
update entry e set e.idEntity = (select x.idEntity from layertype x where x.entry=e.entry) where (e.entry in (select entry from layertype));
update entry e set e.idEntity = (select x.idEntity from pos x where x.entry=e.entry) where (e.entry in (select entry from pos));
update entry e set e.idEntity = (select x.idEntity from qualia x where x.entry=e.entry) where (e.entry in (select entry from qualia));
update entry e set e.idEntity = (select x.idEntity from semantictype x where x.entry=e.entry) where (e.entry in (select entry from semantictype));
update entry e set e.idEntity = (select x.idEntity from template x where x.entry=e.entry) where (e.entry in (select entry from template));
update entry e set e.idEntity = (select x.idEntity from udpos x where x.entry=e.entry) where (e.entry in (select entry from udpos));
update entry e set e.idEntity = (select x.idEntity from corpus x where x.entry=e.entry) where (e.entry in (select entry from corpus));
update entry e set e.idEntity = (select x.idEntity from document x where x.entry=e.entry) where (e.entry in (select entry from document));
update entry e set e.idEntity = (select x.idEntity from genre x where x.entry=e.entry) where (e.entry in (select entry from genre));
update entry e set e.idEntity = (select x.idEntity from genretype x where x.entry=e.entry) where (e.entry in (select entry from genretype));
update entry e set e.idEntity = (select x.idEntity from relationgroup x where x.entry=e.entry) where (e.entry in (select entry from relationgroup));
update entry e set e.idEntity = (select x.idEntity from relationtype x where x.entry=e.entry) where (e.entry in (select entry from relationtype));
commit;


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



update relationgroup set entry='rgp_object' where idRelationGroup = 9;
update relationgroup set entry='rgp_annotation' where idRelationGroup = 10;
update relationgroup set entry='rgp_structure' where idRelationGroup = 11;

insert into user select * from webtool40_db.user where iduser= 6;
insert into `group` select * from webtool40_db.`group` where idgroup <13;



-- routine update at november/24
select relationtype_create('{"nameCanonical":"translation","nameDirect":"Translation","nameInverse":"Translation","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"description","nameDirect":"Description","nameInverse":"Description","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"video_sentence","nameDirect":"Video_Sentence","nameInverse":"Video_Sentence","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"video_dynobj","nameDirect":"Video_DynObject","nameInverse":"Video_DynObject","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"image_staobj","nameDirect":"Image_StaticObject","nameInverse":"Image_StaticObject","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"image_sentence","nameDirect":"Image_Sentence","nameInverse":"Image_Sentence","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"dynobj_bbox","nameDirect":"DynObject_BBox","nameInverse":"DynObject_BBox","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"staobj_bbox","nameDirect":"StaticObject_BBox","nameInverse":"StaticObject_BBox","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"sentence_time","nameDirect":"Sentence_TimeSpan","nameInverse":"Sentence_TimeSpan","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"sentence_textspan","nameDirect":"Sentence_TextSpan","nameInverse":"Sentence_TextSpan","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_sentence","nameDirect":"Document_Sentence","nameInverse":"Document_Sentence","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_video","nameDirect":"Document_Video","nameInverse":"Document_Video","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"document_image","nameDirect":"Document_Image","nameInverse":"Document_Image","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');
select relationtype_create('{"nameCanonical":"annotation","nameDirect":"Object_Annotation","nameInverse":"Object_Annotation","color":"#000000","prefix":"","idRelationGroup":9,"idUser":6}');

--
-- new Group: MANAGER
--

insert into `group`(name, description) values ('MANAGER','Task Manager');
insert into user_group (idUser, idGroup) values (6,6);

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

insert into project(name, description,idProjectGroup) values ('Default Project', 'Default Project',1);
select dataset_create('{"name":"Default dataset","description":"","idProject":1,"idUser":6}');
insert into task(size,isActive,type,createdAt,name,description,idDataset) values (0,1,'Annotation',now(),'Default Task','Default Task',(select idDataset from dataset where name = 'Default Dataset'));


-- associate all corpus to Dataset Default, until correct projecs be created

-- select idDataset into @idDataset from dataset where name = 'Default Dataset';
-- update corpus set idDataset = @idDataset where idCorpus > 0;
-- delete from dataset_corpus where idCorpus > 0;
-- insert into dataset_corpus (idDataset, idCorpus) select idDataset,idCorpus from corpus;

-- create projects based on current annotationset


-- create a usertask para o Usuário -2 em todas as Tasks

insert into usertask(idUser, idTask, isIgnore, isActive, createdAt)
select -2, idTask, 0, 1, now()
from task;

-- create a usertask para a Default Task (para a anotação de textos)

insert into usertask(idUser, idTask, isIgnore, isActive, createdAt)
values (-2, (select idTask from task where name = 'Default Task'),0,1, now());


--
-- Objects migration
--


-- scripts PHP
--

-- Document/Sentence

insert into document_sentence(idDocument,idSentence)
select idDocument,idSentence from view_sentence;

-- webtool40_update_sentence_object
-- webtool40_update_document_object
-- webtool40_create_rel_sentence_document



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

