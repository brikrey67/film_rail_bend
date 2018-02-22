class Api::V1::FilmsController < Api::V1::BaseController 
    def index 
        respond_with Film.all 
    end 

    def show 
        respond_with Film.find(params[:film_id]) 
    end
    
    def create 
        respond_with :api, :v1, Film.create(film_params) 
    end 
    
    def destroy 
        respond_with Film.destroy(params[:film_id]) 
    end 
    
    def update 
        film = Film.find(params["film_id"]) 
        film.update_attributes(film_params) 
        respond_with film, json: film 
    end 
    
    private 

    def film_params 
        params.require(:film).permit(:film_id, :title, :overview, :poster_path, :release_date, :backdrop_path) 
    end 
end

# Read more at https://www.pluralsight.com/guides/ruby-ruby-on-rails/building-a-crud-interface-with-react-and-ruby-on-rails#TVkVsTKbla0ZQCM4.99