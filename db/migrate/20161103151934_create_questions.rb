class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.text :question_text, null: false
  		t.integer :asker_id 
  		t.timestamps
  	end 
  end
end
