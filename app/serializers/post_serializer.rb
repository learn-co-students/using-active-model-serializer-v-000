class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belogs_to :author, serializer: PostAuthorSerializer
end
