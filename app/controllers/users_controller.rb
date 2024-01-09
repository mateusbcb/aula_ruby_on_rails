class UsersController < ApplicationController
    before_action :require_logged_in_user, only: [:edit, :update]

    # Exibe a view com o formulário de novo usuário
    def new
        if user_signed_in?
            redirect_to user_path(current_user)
        else
            @user = User.new
        end
    end

    # Cadastra o novo Usuário
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = 'Usuário cadastrado com sucesso!'
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if current_user.update(user_params)
            flash[:success] = 'Dados atualizados'
            redirect_to contacts_url
        else
            render :edit, status: :unprocessable_entity
        end
    end

    # Função privada para filtrar os parametros aceitos do formulário
    # ajuda evitar SQL Injection
    private
        def user_params
            params.require(:user).permit(:email, :name, :password, :password_confirmation)
        end

end
