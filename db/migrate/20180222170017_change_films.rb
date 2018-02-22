class ChangeFilms < ActiveRecord::Migration[5.1]
ActiveRecord::Migration[5.1]
  def change
    change_table :films do |t|
      t.integer :film_id, null: false
    end
  end
end
