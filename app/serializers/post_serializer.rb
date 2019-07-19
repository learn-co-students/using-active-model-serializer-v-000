class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :authorm serializer: PostAuthorSerializer
end
