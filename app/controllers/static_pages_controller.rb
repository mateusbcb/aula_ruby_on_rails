class StaticPagesController < ApplicationController

    def index
        redirect_to user_path(current_user) if user_signed_in?
        @nome = "Mateus"
    end

    def sobre
    end

    def contato
    end
end
