class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :author, Serializer: PostAuthorSerializer
end
