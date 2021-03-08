class AddPlayerId < ActiveRecord::Migration[6.1]
  def change
      add_column :multi_scores, :player_id, :integer
  end
end
