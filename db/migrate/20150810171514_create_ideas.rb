class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :question
      t.text :explanation

      t.timestamps null: false
    end
  end
end
