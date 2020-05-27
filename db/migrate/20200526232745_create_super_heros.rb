class CreateSuperHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :power
      t.string :biography
      t.integer :team_id
      t.timestamps
    end 
  end
end
