class CreateMultiGames < ActiveRecord::Migration[6.1]
  def change
    create_table :multi_games do |t|
      t.string :result

      t.timestamps
    end
  end
end
