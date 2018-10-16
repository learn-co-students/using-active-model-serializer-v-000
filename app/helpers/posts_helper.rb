module PostsHelper
  def submit_button_text
    @post.id ? "Update Post" : "Submit Post"
  end
end
