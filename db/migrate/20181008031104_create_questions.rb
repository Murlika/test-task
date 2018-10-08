class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
		t.string 'title'
		t.string 'txt'
		t.integer 'answer_true_id'
		t.integer 'test_id'
    end
    add_index  :questions, :test_id
  end
end
