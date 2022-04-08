class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle,  :body, :author, :publish_date, :image, :category_id
end
