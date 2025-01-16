==
== @21/12/2024
== Tudo indica que a carga dos staticobjects da anotação de entidades e eventos dos 3.7 está com erro.
== Os scripts abaixo removem a carga anterior e refazem a carga
==
== As Usertask específicas já foram criadas
==
== Static Entity COM sentença: idUserTask 102 - idCorpus 140 141 144 145
== Static Entity SEM sentença: idUserTask 103 - idCorpus 142 143 146 147
== Static Event  COM sentença: idUserTask 95  - idCorpus 160
== Static Event  SEM sentença: idUserTask 101 - idCorpus 161
==
== A ideia é que exista apenas um StaticObject para cada object do Flicker30k
== Este objeto único recebe anotações diferentes, de acordo com a UserTask
==
== AnnotationObjec.externalId precisa ser nulo para os objetos que não são do Flicker30k
==
update annotationobject
set externalId = null
where idAnnotationObject not in (select idAnnotationObject from annotation where idusertask in (95,101,102,103));

update annotationobject ao
join staticobject so on (ao.idAnnotationObject = so.idAnnotationObject)
set ao.externalId = so.idFlickr30kEntitiesChain
where so.idFlickr30kEntitiesChain >= 0;


==
== @15/01/2025
== As anotações de StaticEvent não estão sendo exibidas.
== Isto ocorre porque não foi feita a associação dos documentos com as imagens (rel_document_image)
== e nem a associação das imagens com os staticobject (rel_image_staobj)
== Os comandos abaixo criam estas os documentos dos corpus "Static Entity COM/SEM sentença" e "StaticEvent COM/SEM sentença"
==

-- rel_document_image

insert into annotationobjectrelation(idRelationType, idAnnotationObject1, idAnnotationObject2)
select 230,d.idAnnotationObject,image.idAnnotationObject
from staticsentencemm ss
join imagemm i on (ss.idImageMM = i.idImageMM)
join image on (i.name = image.name)
join document d on (ss.idDocument = d.idDocument)
where d.idCorpus in (140,141,144,145,142,143,146,147,160,161);

-- rel_image_staobj

insert into annotationobjectrelation(idRelationType, idAnnotationObject1, idAnnotationObject2)
select 221,i2.idAnnotationObject, so.idAnnotationObject
from staticobjectmm som
join staticobject so on (som.idFlickr30kEntitiesChain = so.idFlickr30kEntitiesChain)
join imagemm i1 on (som.idImageMM = i1.idImageMM)
join image i2 on (i1.name = i2.name)
where som.idFlickr30kEntitiesChain > 0;

