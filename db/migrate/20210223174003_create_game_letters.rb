class CreateGameLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :game_letters do |t|
      t.references :game, null: false, foreign_key: true
      t.references :letter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
