# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require_relative './film_data.rb'

Film.destroy_all

film_data = get_film_data()

  film_data.each do |film|
    Film.create!({  
        film_id:          film[:film_id],
        title:            film[:title],
        overview:         film[:overview],
        release_date:     film[:release_date],
        poster_path:      film[:poster_path],
        backdrop_path:    film[:backdrop_path]
    })
  end