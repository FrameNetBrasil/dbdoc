
## 05/12/2024
Update da tabela StaticObject.
- StaticObject referentes à anotação StaticBBox estavam sendo criados com idFlickr30kEntitiesChain = 0. Quando foi feita a carga das anotações de StaticEntity e StaticEvent, as anotações com idFlickr30kEntitiesChain = 0 foram acrescentadas aos objetos da StaticBBox. É preciso atualizar o idFlickr30kEntitiesChain para -1 para os objetos do StaticBBox.

## 04/12/2024
Criação da tabela ProjectGroup
- Necessidade de agrupar os projetos de forma sistematizada, para filtrar os corpus na interface
Recarga das anotações de StaticObject porque não foi diferenciado a qual corpus cada anotação pertencia.
- Necessidade de criar Task/UserTask para cada Corpus de StaticEvent e StaticEntity e registar na tabela Annotation.

## 20/11/2024
Alteração da tabela RelationType
- Remoção do campo RelationType:Domain
- Acrescentar campos para o name_direct, name_inverse e color

## 18/11/2024
 Alteração da estrutura GenericLabel
- O objetivo é remover o relationtype "rel_haslabeltype", colocando o LayerType como FK (opcional) na tabela GenericLabel.

## 30/10/2024
Scripts para alteração da estrutura Project/Task
- O objetivo é remover a estrutura temporaria com "Default Project" que foi criada na migração do banco.
