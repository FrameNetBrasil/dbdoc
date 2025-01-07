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


