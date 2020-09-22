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
        @fonda = Fonda.new
    end

    def create
        @fonda = Fonda.new(fonda_params)
        if @fonda.save
            redirect_to root_path, notice: 'se ha añadido una nueva fonda'
        else
            render :new
        end
    end

    def destroy
    end

    private
    def fonda_params
        params.require(:fonda).permit[:name, :address, :food]
    end
end
