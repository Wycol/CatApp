module Api::V1
    class MissingPeopleController < ApiController
        before_action :set_miss, only: [:show, :destroy, :update]

        def index
            @missPeople = MissingPerson.all
            
        end

        def show
        end

        def update
            @miss.update(missing_person_params)
            head :no_content
        end

        def destroy
            @miss.destroy
            head :no_content
        end

        def create
            @missPerson = MissingPerson.new(missing_person_params)
            
             if  @missPerson.save
                render json: {message: "Persona desaparecida añadida"}
            
            else
                render json: {message: "Error al crear persona desaparecida"}
            end
    
        end

        def missing_person_params
            params.permit(:name, :lastname, :age, :gender, :image, :description, :height, :weight, :eye, :race, :hair, :hair_color, :complexion, :phone, :relationship, :contact_name)
        end

        def set_miss
            @miss = MissingPerson.find(params[:id])
        end

    end
end