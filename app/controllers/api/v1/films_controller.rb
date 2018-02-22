class Api::V1::FilmsController < Api::V1::BaseController 
    def index 
        respond_with Film.all.order("title") 
    end 

    def show 
        respond_with Film.find(params[:id]) 
    end
    
    def create 
        respond_with :api, :v1, Film.create(film_params) 
    end 
    
    def destroy 
        respond_with Film.destroy(params[:id]) 
    end 
    
    def update 
        film = Film.find(params["id"]) 
        film.update_attributes(film_params) 
        respond_with film, json: film 
    end 
    
    private 

    def film_params 
        params.require(:film).permit(:film_id, :title, :overview, :poster_path, :release_date, :backdrop_path) 
    end 
end

# The respond_with method is part of the responders gem and will return a JSON object with the results of each action in the controller.
# Read more at https://www.pluralsight.com/guides/ruby-ruby-on-rails/building-a-crud-interface-with-react-and-ruby-on-rails#TVkVsTKbla0ZQCM4.99
