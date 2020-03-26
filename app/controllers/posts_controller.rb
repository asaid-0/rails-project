class PostsController < ApplicationController

    def index
        @posts = Post.all
        @comment = Comment.new
    end
    def edit
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to :posts
    end

    def new
        @post = Post.new
    end

    def update
        @post = Post.find(params[:id])
        @post.update(params.require(:post).permit(:title, :content))
        redirect_to action: :index
    end

    def create
        # render :index
        # @post = User.find(1).posts.new
        # @post = Post.new
        # @post.title = params[:title]
        # @post.content = params[:content]
        # @post.save
        post_params = params.require(:post).permit(:title, :content)
        #p = Post.new(params).save
        # p = Post.create(post_params)
        @post = User.find(1).posts.create(post_params)
        if @post.id
            redirect_to :posts
        else
            render :new
        end
        # redirect_to action: :index, controller: :user
    end

end
