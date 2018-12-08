class PostSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :author, serializer: PostAuthorSerializer
end
