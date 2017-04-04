class PostAuthorSerializer < ActiveModel::Serializer
  attributes :name, :mytime, :last_post

  def mytime
    Time.zone.now
  end

  def last_post
    self.object.posts.last.title.upcase.reverse
  end

end
