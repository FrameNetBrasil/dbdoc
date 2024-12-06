[[Diagrams]]
[[Timeline]]

## Nova estrutura para projetos

- Tabelas: Project, Dataset, Task, UserTask

### Para criação de novo projeto
1. Criar Projeto.
2. Criar Dataset e associar ao Projeto.
3. Criar Corpus (se necessário) e associar ao Projeto.
4. Criar Documento (se necessário) e associar ao Corpus.
5. Criar a Task (tarefa de anotação), definindo o Dataset associado.
6. Associar o Usuário à Task (tabela UserTask).
7. Associar os Documentos/Corpus à UserTask.

### Tabela AnnotationObject

- todos os objetos que participam do processo de anotação.
- equivale ao ENTITY para as tabelas da estrutura
- tipos de objetos:

- SEN Sentence
- SOB Static Object
- DOB Dynamic Object
- TXS Text Span
- IMG Image
- DOC Document
- VID Video
- BBX BoundingBox


### Tabelas de Objetos

- boundingbox: usado nas anotaçãoes estática e dinâmica
- dynamicobject: Usado na anotação dinâmica; um DynamicObject pode ter várias BBoxes
- staticobject: Usado na anotação dinâmica; equivale às Entities do Flickr30k; pode ter várias BBoxes
- video: informações sobre os videos da anotação dinâmica
- image: informações sobre as imagens (atualmente apenas do Flickr30k)
- token: texto (token) e posição do token em uma sentença
- sentence: texto de uma sentença (associada a um ou mais documentos)
- textspan: startchar/endchar (substitui o label na notação de texto); usado também na anotação estática
- timespan: startTime/endTime usados na anotação dinâmica
- document: documentos (associados a sentenças)

### Relações entre objetos

- as relações entre objetos são registradas na tabela AnnotationObjectRelation ( ver [[Diagrams]] )

- rel_translation: sentence/sentence
- rel_description: image/sentence
- rel_video_sentence: video/sentence
- rel_video_dynobj: video/dynamicobject
- rel_image_staobj: image/staticobject
- rel_image_sentence: image/sentence
- rel_dynobj_bbox: dynamicobject/boundingbox
- rel_staobj_bbox: staticobject/boundingbox
- rel_sentence_time: sentence/timespan - anotação dinâmica
- rel_sentence_textspan: sentence/textspan - anotação estática
- rel_textspan_bbox: textspan/boundingbox
- rel_document_sentence: document/sentence
- rel_document_video: document/video

### Anotação

- uma anotação é a relação entre um AnnotationObject e uma Entity, no contexto de uma UserTask
- relationtype: rel_annotation
- Objetos que são anotados: Textspan, StaticObject e DynamicObject

## Atualização de Entity.type para 3 chars

- AST AnnotationStatus (tabela TypeInstance)
- C5 C5
- CE Construction Element
- CON Constraint
- CPT Concept
- CRP Corpus
- CTY Core Type
- CXN Construction
- DOC Document
- FE FrameElement
- FRM Frame
- GLB GenericLabel
- GEN Genre
- GTY GenreType
- ITY Instantiation Type
- LEM Lemma
- LTY LayerType
- LU LU
- LEX Lexeme
- CNT Constraint Type
- POS POS
- CTY Concept Type
- QLA Qualia
- QLR Qualia relation
- RTG Relation Group
- RTY Relation Type
- STY Semantic Type
- TYP Type
- UDF UD Feature
- UDP UD POS
- UDR UD Relation
- WFM WordForm

### Novos tipos

- PRJ Project
- DTS Dataset
- TSK Task



