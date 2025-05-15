[[annotation.png]]

- Todos os objetos que participam dos processos de anotação estão associados à tabela `annotationobject`.
- As relações entre os objetos de anotação são registradas na tabela `annotationobjectrelation`. Para facilidade de consulta, diversas views fazem referência a esta tabela.

```mermaid
flowchart TB
	sentence -- rel_sentence_time --> timespan
	sentence -- rel_sentence_textspan --> textspan
	document -- rel_document_sentence --> sentence
	document -- rel_document_video --> video
	document -- rel_document_image --> image
	video -- rel_video_sentence --> sentence
	video -- rel_video_dynobj --> dynamic_object
	dynamic_object -- rel_dynobj_bbox --> bounding_box
	static_object -- rel_staobj_bbox --> bounding_box
	image -- rel_image_staobj --> static_object
	image -- rel_image_sentence --> sentence

```

- O campo `annotationobject::externalId` possibilita fazer referência a objetos externos à webtool. Atualmente este campo é usado para associar StaticObjects e TextSpans com os objetos do Flickr30k.


