class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :fname
      t.date :birthdate
      t.string :workingcountry

      t.timestamps
    end
  end
end
