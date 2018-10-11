class AddNumQuestionToTestPassing < ActiveRecord::Migration[5.2]
  def change
	add_column :test_passings, :current_state, :integer
  end
end
