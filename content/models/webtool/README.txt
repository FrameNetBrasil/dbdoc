Esta pasta contem os scripts para atualização do banco para a versão 4.0.

Esta versão é de julho/2024, com os principais objetivos:

- Reunificar as tabelas usadas nos projetos de multimodalidade.
- Elevar SENTENCE para entity para permitir relacionamentos diversos.
- Criar tabelas que atendam ao processo de tokenização.
- Criar a estrutura para projetos e datasets.
- Criar a estrutura para tarefas do usuário.
- Registrar cada anotação no contexto de um projeto/tarefa.
- Incrementar o uso de views para facilitar as consultas ao banco.
- Criar uma estrutura de mensagens para o usuário.
- Remover tabelas que não estão sendo usadas: Property, Translation, C5Node, C5Link, Form*, Log, Person, SubCorpus, Template, Transaction, WordSegment.


- Projetos de Multimodalidade

. Unificar as estruturas para os tipos de anotação multimodal
. Remover o sufixo MM
. Tabelas para Sentence, Image, Video, Sound
. Objetos visuais (VisualObject) compostode de uma ou mais BoundingBox


- Criar uma tabela sentence_translatiopn_temp temporaria, para a reorganização da sentence_translation;
