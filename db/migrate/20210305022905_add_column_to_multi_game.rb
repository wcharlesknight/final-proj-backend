class AddColumnToMultiGame < ActiveRecord::Migration[6.1]
  def change
    add_column :multi_games, :user_id, :integer
    add_column :multi_games, :opponent, :string 
  end
end
