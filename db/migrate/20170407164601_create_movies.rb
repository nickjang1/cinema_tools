class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :actor
      t.float :rating

      t.timestamps
    end
  end
end
