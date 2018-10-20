class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_may :posts
end
