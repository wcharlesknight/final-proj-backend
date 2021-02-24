class CreateLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :letters do |t|
      t.string :character
      t.integer :point
      t.boolean :vowel

      t.timestamps
    end
  end
end
