class AddNameToScore < ActiveRecord::Migration[6.1]
  def change
    add_column :multi_scores, :player_name, :string
end
end
