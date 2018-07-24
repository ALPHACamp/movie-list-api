class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.timestamps
      t.string :title, null:false, default:""
      t.string :genres
      t.string :description
      t.date :release_date
      t.string :image
    end
  end
end
