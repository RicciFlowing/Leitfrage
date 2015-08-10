class AddTermIdToIdeas < ActiveRecord::Migration
  def change
    change_table :ideas do |t|
      t.belongs_to :term, index: true
    end
  end
end
