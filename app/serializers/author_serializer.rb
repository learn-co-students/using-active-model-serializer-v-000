class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts, only: [:id, :title, :description]
end
