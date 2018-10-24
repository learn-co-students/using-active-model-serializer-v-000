class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts #render a list of an author's posts along with the author's information
end