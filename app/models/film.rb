class Film < ActiveRecord::Base
  validates :title, :release_date, :overview, {presence: true}
end