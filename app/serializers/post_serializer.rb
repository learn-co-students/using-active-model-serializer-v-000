class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
   #associations here will let Rails know what needs to go in the JSON
   #explicitly render PostAuthorSerializer instead of relying on convention - Rails knows to just render author
   #with PostAuthorSerializer
end
