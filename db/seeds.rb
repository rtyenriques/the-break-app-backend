# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create(:name => "Events")
category_two = Category.create(:name => 'Footage')
article = Article.create(:category_id => 1, :title => "new event", :body => "event description", :publish_date => Date.today)

article_two = Article.create(:category_id => 2, :title => "new footage", :body => "footage description", :publish_date => Date.today)


