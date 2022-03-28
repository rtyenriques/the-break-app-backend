class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.string :title
      t.string :body
      t.string :subtitle
      t.string :author
      t.datetime :publish_date
      t.string :image

      t.timestamps
    end
  end
end
