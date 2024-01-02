class UsersController < ApplicationController
    # Exibe a view com o formulário de novo usuário
    def new
        @user = User.new
    end

    # Cadastra o novo Usuário
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = 'Usuário cadastrado com sucesso!'
            redirect_to user_path(@user)
        else
            render :new, status: :unprocessable_entity
        end
    end

    # Pagina do Usuário Cadstrado.
    def show
        @user = User.find(params[:id])
    end

    # Função privada para filtrar os parametros aceitos do formulário
    # ajuda evitar SQL Injection
    private
        def user_params
            params.require(:user).permit(:email, :name, :password, :password_confirmation)
        end

end
