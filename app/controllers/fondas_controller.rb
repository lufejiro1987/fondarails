class FondasController < ApplicationController

    def index
        if params[:name]
            @fondas = Fonda.where('name LIKE?', "%#{params[:name]}%")
        else
            @fondas = Fonda.all
        end
    end

    def show
    end

    def new
    end

    def create
    end

    def destroy
    end
end
