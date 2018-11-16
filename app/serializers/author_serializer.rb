class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_many :posts
end
