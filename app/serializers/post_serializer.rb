class PostSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :title, :description
  belongs_to :author, serializer: PostAuthorSerializer
=======
   attributes :id, :title, :description
>>>>>>> e5dd20d77800068513eaa9524434918eb755db5c
end
