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
    end
  end
end