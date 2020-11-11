class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :indesx

  end


  def checked
  post = Post.find(params[:id])
  if post.checked
    post.update(checked: false)
  else
    post.upade(checked: true)
  end

  item = Post.find(params[:id]
  render json: { post: item })
  end

end