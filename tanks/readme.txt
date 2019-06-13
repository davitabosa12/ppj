Jogo Tanks feito com Godot

Jogo de tanques multiplayer em uma arena

Foi usado o projeto Multiplayer Bomber do Godot como base pro Lobby, mas algumas funcoes tiverm que ser modificadas
A condicao de vitoria, por exemplo.

O multiplayer do Godot se dá em uma arquitetura mestre-escravo. Cada cliente é dono de seus gameobjects e apenas o dono deve
modificar a posicao e outras variaveis diretamente. Se um peer quiser sincronizar o gameobject de outro peer, deve ser utilizada
variaveis "puppet", que sao variaveis controladas pelo dono do gameobject e atualizadas pelo mesmo. Para um peer avisar para outro
que seu gameobject atualizou, utiliza-se a funcao rset.

Se utiliza rpc para controlar o que todos os peers fazem, enviando o nome da funcao e argumentos. Dependendo da assinatura da
funcao, ela é executada diferentemente:
caso seja remotesync, todos os peers incluindo o que fez o rpc, chamam a funcao
caso seja puppet, apenas os peers que nao sao donos do gameobject executam a funcao.

Tanks.exe é o jogo executavel