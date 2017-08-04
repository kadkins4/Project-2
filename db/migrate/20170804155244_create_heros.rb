class CreateHeros < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :primary
      t.string :image
      t.string :complexity
      t.string :description
      t.string :playing
      t.string :with
      t.string :against
      t.references :team, foreign_key: true
    end
  end
end
