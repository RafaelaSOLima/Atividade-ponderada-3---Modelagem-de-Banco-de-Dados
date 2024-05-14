# Atividade-ponderada-3---Modelagem-de-Banco-de-Dados --- By Rafaela
   &nbsp;&nbsp;&nbsp;&nbsp; A Imagem a seguir refere-se a modelagem do banco de dados, feita usando o SQL Designer e baseada no projeto do grupo.
<div align="center" width="100%">
 <sub>Figura 1: Banco de dados relacional</sub><br>
 
 ![image](https://github.com/RafaelaSOLima/Atividade-ponderada-3---Modelagem-de-Banco-de-Dados/assets/159059497/51b27a6d-a6b5-4a0a-99e3-bbfc132e8666)

 <sup>Fonte: Material produzido pela Autora (2024)</sup>
</div>

## Tabela descritiva do Banco de Dados
| tabela                        | descrição                                                                                                                                                                                                                                                                   |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| publicações_do_feed                       | Essa tabela armazena os dados dos dois tipos de publicação. |
| publicação_do_feed_faça_você_mesmo                   | Essa tabela armazena os dados do post faça você mesmo, que é um tutorial de caridade, por isso as pessoas podem repostar fazendo a sua versão    |
| publicações_do_feed_comum |  Essa tabela armazena os dados do feed comum, que é só a foto e um título/legenda.                              |
| refizeram_o_projeto                | Aqui ficam registradas as pessoas que fizeram o projeto também lincadas as suas republicações.                            |
| filtro_de_publicação       | Essa tabela armazena de forma binária, com a intenção de booleana, pois faremos um filtro, para que a pessoa selecione o tipo de causa a que a publicação pertence e quais publicações prefere ver                  |
| interações_da_publicação               | Nessa tabela ficam amazenadas as curtidas, comentários, republicações ... As metricas de popularidade           |
| Informações_de_ usuário          | Aqui ficam os dados coletados na criação da conta, e referem-se ao próprio usuário                    |

## Relções entre as Tabelas:

### informações_de_usuários 1:N (1:5)
&nbsp;&nbsp;&nbsp;&nbsp; informações_de_usuários está conectado a: publicação_do_feed_faça_você_mesmo, publicações_do_feed_comum,  interações_da_publicação, publicações_do_feed e refizeram_o_projeto.

### publicação_do_feed_faça_você_mesmo 1:N (1:2)
 &nbsp;&nbsp;&nbsp;&nbsp; publicação_do_feed_faça_você_mesmo está conectado a: refizeram_o_projeto e  publicações_do_feed. 
 
### publicações_do_feed_comum 1:1
 &nbsp;&nbsp;&nbsp;&nbsp; publicações_do_feed_comum está conectado apenas a publicações_do_feed. 
 
### refizeram_o_projeto 1:1
 &nbsp;&nbsp;&nbsp;&nbsp;  refizeram_o_projeto está conectado apenas a publicação_do_feed_faça_você_mesmo 
 
### filtro_de_publicação 1:1
 &nbsp;&nbsp;&nbsp;&nbsp; filtro_de_publicação está conectado apenas a publicação_do_feed_faça_você_mesmo
 
### interações_da_publicação 1:N (1:2)
 &nbsp;&nbsp;&nbsp;&nbsp; interações_da_publicação está conectado a: publicações_do_feed_comum e publicação_do_feed_faça_você_mesmo.
 
