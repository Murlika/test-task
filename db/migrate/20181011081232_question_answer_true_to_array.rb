class QuestionAnswerTrueToArray < ActiveRecord::Migration[5.2]
  def self.up
    add_column :questions, :answer_true_ids, :integer, array: true
    remove_column :questions, :answer_true_id
  end
 
  def self.down
	remove_column :questions, :answer_true_ids
    add_column :questions, :answer_true_id, :integer
  end
end
