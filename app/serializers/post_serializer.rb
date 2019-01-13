class PostSerializer < ActiveModel::Serializer
  #2 add desired attributes
  attributes :id, :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
end
