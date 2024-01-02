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

#### quarto Dia

_02/01/2024_

* 

---