class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :author, null: false
      t.datetime :article_date, null: false
      t.text :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
