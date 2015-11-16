class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id, null:false
      t.integer :round_id, null:false
      t.boolean :answer_status, default:false
      t.integer :attempts, default:0

      t.timestamps(null:false)
    end
  end
end
