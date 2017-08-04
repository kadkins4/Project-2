class CreateHeroes < ActiveRecord::Migration[5.1]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :type
      t.string :image
      t.string :roles
      t.string :description
      t.references :team, foreign_key: true
    end
  end
end
