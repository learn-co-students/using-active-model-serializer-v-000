class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :title
  belongs_to :author, serializer: PostAuthorSerializer
end
