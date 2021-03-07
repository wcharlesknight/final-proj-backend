class AddMultiGameId < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :multi_game_id, :integer
  end
end
