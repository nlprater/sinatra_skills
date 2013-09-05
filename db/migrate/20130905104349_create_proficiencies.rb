class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
    	t.belongs_to :user
    	t.belongs_to :skill
    	t.integer :years_exp
    	t.binary :formal_edu
    	t.timestamps
    end
  end
end
