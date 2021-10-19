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
        pet = Pet.create!(pet_class: params[:pet_class], pet_image: params[:pet_image], pet_accessory_class: params[:pet_accessory_class], 
        pet_accessory_image: params[:pet_accessory_image], background_image: params[:background_image], pet_name: params[:pet_name], 
        pet_message: params[:pet_message], pet_food_class: params[:pet_food_class], pet_food_image: params[:pet_food_image], user_id: params[:user_id])
        render json: adventure, status: :created
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end 

end

