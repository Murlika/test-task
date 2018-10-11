class AddNQuestionToTest < ActiveRecord::Migration[5.2]
  def change
	add_column :tests, :N, :integer
  end
end
