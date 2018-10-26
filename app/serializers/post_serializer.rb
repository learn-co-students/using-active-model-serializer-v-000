class PostSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :author, serializer: PostAuthorSerializer
end
