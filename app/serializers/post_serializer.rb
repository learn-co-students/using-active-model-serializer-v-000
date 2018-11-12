class PostSerializer < ActiveModel::Serializer
  belongs_to :author
  attributes :id, :title, :description
end
