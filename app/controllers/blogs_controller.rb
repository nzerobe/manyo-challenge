class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy] 
   
  def index
    @blogs = Blog.order('created_at DESC')
  end

  def new
    @blogs = Blog.new
  end
  
  def create
   
    @blogs = Blog.new(blog_params)
    if @blogs.save

      redirect_to blogs_path
      flash[:success] = 'Blog Created'
    else
      render 'new'
    end
  end
  
 
  def show
   @blogs = Blog.find(params[:id])
  end
  
  def edit
     @blogs = Blog.find(params[:id])
  end
    
  def update
    @blogs = Blog.find(params[:id])
    if @blogs.update(blog_params)
      redirect_to blogs_path, Notice: "You have edited this blog！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @blog.destroy
    redirect_to blogs_path, Notice: "You have deleted the blog!"
  end
  
  private

   def blog_params
     params.require(:blog).permit(:title, :content,  :deadline)
   end
  
  def set_blog
    @blog = Blog.find(params[:id])
  end
  
end  

