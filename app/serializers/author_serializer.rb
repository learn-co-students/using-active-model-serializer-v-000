class AuthorSerializer < ActiveModel::Serializer
 #2 Add desired attributes and model associations
  attributes :id
  has_many :posts
end
