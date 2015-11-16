class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## We need DB constraints here!
      #
      #
      t.string :name# , null: false
      t.string :password#, null: false
      # t.string :state, #length: 2

      # New York
      # new york
      # Nueva york
      # NY
      # nY
      # Nuew Yourk

      t.timestamps(null:false)
    end
  end
end
