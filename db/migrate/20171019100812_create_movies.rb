class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :originaltitle
      t.integer :releaseyear
      t.string :cover
      t.integer :length
      t.integer :ageres
      t.string :synopsis

      t.timestamps
    end
  end
end
