class AddQuestionTitleColumn < ActiveRecord::Migration
  def change
    add_column :questions, :question_title, :string, null: false
  end
end
