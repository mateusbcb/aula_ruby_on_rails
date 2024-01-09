# Projeto - Mini Blog

Aula de Ruby on Rails para iniciantes feita no Udemy

Aula: [Link da Aula](https://www.udemy.com/course/ruby-on-rails-5-na-pratica/learn/lecture/12372964#overview)
Professor: [Bruno Paulino](https://www.udemy.com/user/brunopaulino/)

###### Versões base das ferramentas locais

* ruby "3.0.0"
* gem "rails", "~> 7.1.2"
* gem 'bootstrap-sass', '~> 3.4.1'
* gem 'sassc-rails', '>= 2.1.0'
* gem 'jquery-rails'

---

#### Inicio do desenvolvimento

_30/12/2023_

* Comandos Rails
* Hellow World
* Gem - Bootstrap
* Gem - Jquery-rails
* Adicionado Partials para Menu e rodapé

---

#### Segundo Dia

_31/12/2023_

* Paginas Estáticas
* Model - Contact (usando scaffold)
* model - User (criado manualmente)
* Validações para criação de usuário

---

#### Terceiro Dia

_01/01/2024_

* Corrigindo problema ao exibir erros de validação de cadastro.

Solução:
No _user_controller_, na função _create_ no _ELSE_ do _IF_ foi alterado o seguinte código

```ruby
`render 'new'`
```

Pelo codigo:

```ruby
`render :new, status: :unprocessable_entity`
```

O "_status: :unprocessable_entity_", representa o codigo 422 erro de validação,  além de estar mais correto, ele evita o redirecionamento da url, eliminando o problema de segurança com o redirecionamento.

---

#### Quarto Dia

_02/01/2024_

* Ajustado Link dos Botões e o falsh message
* Tradução das mensagens de validação
* Tela de Login

---

#### Quinto Dia

_06/01/2024_

* correções do bootstrap e Jquery (foi necessário colocar CDN para agilizar o processo)
* ajuste no modelo Contacts e User (Ligação entre tabelas, 'has_many' e 'belongs_to')
* adicionado user_id na tabela Contacts
* Controle de Rotas e areas restritas para usuários logados

---

#### Sexto Dia

_08/01/2024_

* Correção de Models e view de contacts
* Melhoria da view contacts (lista de contatos)

---

#### setimo Dia

_09/01/2024_

* Melhoria da View contacts new
* Criação e melhoria da view contacts edit
* redirecionamento caso Logado para página contacts