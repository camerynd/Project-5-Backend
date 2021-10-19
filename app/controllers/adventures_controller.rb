class AdventuresController < ApplicationController
    skip_before_action :authorized, only: [:create, :destroy]

    def index
        adventures = Adventure.all 
        render json: adventures 
    end

    def destroy
        def destroy
            adventure = Adventure.find_by(id: params[:id])
            if adventure
                adventure.destroy
                head :no_content
            else
                render json: { error: "Adventure not found" }, status: :not_found
            end
        end
    end

    def create
        adventure = Adventure.create!(user_id: params[:user_id], character_name: params[:character_name], choice_1: params[:choice_1], choice_2: params[:choice_2], 
        choice_3: params[:choice_3], choice_4: params[:choice_4], choice_5: params[:choice_5], 
        adventure_status: params[:adventure_status], last_words: params[:last_words])
        render json: adventure, status: :created
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end 

end

