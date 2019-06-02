module Api::V1
    class MissingPeopleController < ApiController

        def index
            @missPeople = MissingPerson.all
        end

        def create
            @missPerson = MissingPerson.new(missing_person_params)
            
             if  @missPerson.save
                render json: {message: "Persona desaparecida añadida"}
            
            else
                render json: {message: "Arroz en el sistema"}
            end
    
        end

        def missing_person_params
            params.permit(:image, :name, :lastname, :age, :gender)
        end

    end
end