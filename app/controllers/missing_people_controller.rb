class MissingPeopleController < ApplicationController
    before_action :set_miss, only: [:show, :edit, :destroy, :update]
    def index
        @missPeople = MissingPerson.all
    end

    def new
        @miss= MissingPerson.new
    end
    
    def create
        @miss= MissingPerson.new(missing_person_params)
        if @miss.save
            flash[:success] = "Persona perdida añadida!"
            redirect_to missing_people_path
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @miss.update(missing_person_params)
            flash[:success] = "Se actualizaron los datos de la persona perdida."
                redirect_to missing_people_path
        else
            render 'edit'
        end
    end

    def destroy
        @miss.destroy
        flash[:danger]="Persona perdida eliminada"
        redirect_to missing_people_path
        
    end
    private
    def set_miss
        @miss = MissingPerson.find(params[:id])
    end

    def missing_person_params
        params.require(:missing_person).permit(:name, :lastname, :age, :gender, :image, :description, :height, :weight, :eye, :race, :hair, :hair_color, :complexion, :phone, :relationship, :contact_name )
    end
end