class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rating
      t.date :release_date
      t.integer :runtime
      t.text :synopsis

      t.timestamps
    end
  end
end
