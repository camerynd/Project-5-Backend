class PetsController < ApplicationController

    def index
        pets = Pet.all 
        render json: pets
    end

    def destroy
        def destroy
            pet = Pet.find_by(id: params[:id])
            if pet
                pet.destroy
                head :no_content
            else
                render json: { error: "Pet not found" }, status: :not_found
            end
        end
    end

    def create
        pet = Pet.create!(pet_class: params[:pet_class], pet_name: params[:pet_name], pet_message: params[:pet_message],
        pet_image: params[:pet_image], accessory_1: params[:accessory_1], accessory_2: params[:accessory_2],
        accessory_3: params[:accessory_3], accessory_4: params[:accessory_4], user_id: params[:user_id])
        render json: pet, status: :created
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end 

end

