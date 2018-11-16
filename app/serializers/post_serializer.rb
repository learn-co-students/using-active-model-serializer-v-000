class PostSerializer < ActiveModel::Serializer
  attributes :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
end