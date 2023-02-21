class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end
 
   # コメントアウトする
   # def new
   # end
 
  def create
    post = Post.create(content: params[:content])
    rebder json:{ post: post }
  end
 
 end
 