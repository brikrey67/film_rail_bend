class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string  :title, null: false
      t.string  :overview, null: false
      t.date    :release_date, null: false
      t.string  :poster_path
      t.string  :backdrop_path
    end
  end
end
