class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.text :answer_response, null: false
  		t.boolean :best_answer
  		t.integer :question_id
  		t.integer :responder_id
  		t.timestamps
  	end 
  end
end
