class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :games_played
      t.integer :off_score
      t.integer :off_miss
      t.integer :def_score
      t.integer :def_miss
      t.timestamps
    end
  end
end
