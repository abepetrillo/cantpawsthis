class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
    post = Post.where("tags @> ARRAY[?]", ['about']).first
    redirect_to post_path(post.id)
  end
end
