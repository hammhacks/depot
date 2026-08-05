class CreateAnswers < ActiveRecord::Migration[8.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.text :response

      t.timestamps
    end
  end
end
