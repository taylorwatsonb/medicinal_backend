class Api::V1::HerbsController < ApplicationController
    def index
        @herbs = Herb.all
        render json: @herbs
      end
    
      def create
        @herb.new(herb_params)
        if @herb.save
          render json: @herb, status: :accepted
        else
          render json: { errors: @herb.errors.full_messages }, status: :unprocessible_entity
        end
      end
    
      private
    
      def herb_params
        params.permit(:title, :description, :image_url, :nature_id)
      end
    
end
