class PostSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :author, serializer: PostAuthorSerializer
end
