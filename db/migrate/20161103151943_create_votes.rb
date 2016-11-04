class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.integer :voter_id
  		t.boolean :up_vote
  		t.integer :voteable_id
  		t.string :voteable_type
  		t.timestamps
	end

	add_index :votes, [:voteable_type, :voteable_id]
  end
end
