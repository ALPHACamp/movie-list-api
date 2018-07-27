class AddColCastDirectorToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
  end
end
