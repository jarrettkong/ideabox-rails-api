module Api
  module V1
    class IdeasController < ApplicationController
      def index
        ideas = Idea.all
        render json: {status: 'Success', data: ideas}, status: :ok
      end

      def show
        idea = Idea.find(params[:id])
        render json: {status: 'Success', data: idea}, status: :ok
      end 

      def create
        idea = Idea.new(idea_params)
        
        if idea.save
          render json: {status: 'Success', data: idea}, status: :ok
        else
          render json: {status: 'Error', data: idea.errors}, status: :unprocessable_entity
        end
      end

      def destroy 
        idea = Idea.find(params[:id])
        idea.destroy

        render json: {status: 'Success'}, status: :ok        
      end

      private

      def idea_params
        params.permit(:title, :body)
      end
    end
  end
end