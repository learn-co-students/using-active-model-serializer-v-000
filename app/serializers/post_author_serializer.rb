class PostAuthorSerializer < ActiveModel::Serializer
  attributes :name, :mytime, :last_post_title_upcase_reverse, :myname

  def mytime
    Time.zone.now
  end

  def last_post_title_upcase_reverse
    self.object.posts.last.title.upcase.reverse
  end

  def myname
    self.object.name.gsub(' ', '')
  end
end
