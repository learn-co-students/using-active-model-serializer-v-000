class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
  #explicitly give it a serializer to use rather than relying on the convention
  #AMS to render :author with PostAuthorSerializer instead of the default.

  
end
