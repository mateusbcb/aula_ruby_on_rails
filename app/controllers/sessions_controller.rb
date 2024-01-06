class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      sign_in(user)
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Email ou senha invalidos'
      render :new, status: :unauthorized
    end
  end

  def destroy
    sign_out
    flash.now[:success] = 'Logout com sucesso'
    redirect_to entrar_path
  end

end
