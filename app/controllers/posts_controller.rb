class PostsController < ApplicationController
  before_action require: :models
	before_action :find_post, except: [:index, :new, :create]
  def index
  	@posts = Post.all
    if params[:search]
      @posts = post.search(params[:search])
    else
      @posts = Post.all
    end
  end

  def show
  end

  # def new
  # 	@posts = post.new
  # end

  def create
  	@post = post.new(post_params)
    @post.models_id = current_model.id
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render :new
    end
  end

  def edit
  end

  def update
  	if @post.update(post_params)
  		redirect_to post_path(@post)
  	else
  		render :edit
    end
  end

  def destroy
  	@post.destroy
  	redirect_to post_path
  end

  private

  	def post_params
  		params.require(:pet).permit(:title, :author, :body)
  	end

  	def find_post
  		@post = Post.find(params[:id])
  	end
end
