class BirdsController < ApplicationController
    def index #GET all birds in the db
        birds = Bird.all 
        render json: birds
    end
    def show 
        birds = Bird.find_by(id: params[:id])
        if birds
            render json: birds
        else 
            render json: {error: "Bird doesn't exist"}, status: :not_found
    end
end
end
