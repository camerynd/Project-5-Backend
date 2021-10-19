class ScoresController < ApplicationController
    skip_before_action :authorized, only: [:high_scores]

    def high_scores
        high_scores = Score.highest_score
        render json: high_scores 
    end 

    def create
        score = Score.create!(score: params[:score], user_id: params[:user_id])
        render json: score, status: :created
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end 

end
