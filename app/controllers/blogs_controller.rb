class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy] 
    
    
    
  def index

    @blogs = Blog.order('created_at DESC')
  end
# Add
  def new
  @blogs = Blog.new
  end
#   def create
#     @blogs = Blog.new(blog_params)
#     if @blogs.save
#       # Switch to the list screen and display a message saying "You have created new blog!"
#       redirect_to blogs_path, Notice: "You have created new blog!"
#     else
#       # Redraw the input form.
#       render 'new'
#     end
#   end
  
  def create
#     @blog = current_user.blogs.build(blog_params)
    @blogs = Blog.new(blog_params)
    if @blogs.save
#       blog_labels_create
      redirect_to blogs_path
      flash[:success] = 'Blog Created'
    else
      render 'new'
    end
  end
  
  
  
  
  
  def show
    # 追記する
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
    @blogs.destroy
    redirect_to blogs_path, Notice: "You have deleted the blog!"
  end
  
  #Omitted
  private
  #Before_action : Set_blog, only: [:show, :edit, :update, :destroy] 
   def blog_params
    params.require(:blog).permit(:title, :content)
   end
  
  def set_blog
    @blogs = Blog.find(params[:id])
  end
  
end  

