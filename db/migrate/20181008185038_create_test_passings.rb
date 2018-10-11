class CreateTestPassings < ActiveRecord::Migration[5.2]
  def change
    create_table :test_passings do |t|
		t.integer 'test_id'
		t.integer 'user_id'
		t.integer 'enum_questions', array: true
		t.integer 'user_answers', array: true
		t.integer 'user_results', array: true
		t.timestamps
    end
  end
end
