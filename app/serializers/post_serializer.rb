class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
  # belongs_to :author
end
