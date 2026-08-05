class RemoveAnswerColumnFromQuestion < ActiveRecord::Migration[8.1]
  def change
    remove_column :questions, :answer
  end
end
