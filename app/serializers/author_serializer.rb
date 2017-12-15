class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_manh :posts
end
