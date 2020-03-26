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

        post_params = params.require(:post).permit(:title, :content)
        # @post = User.find(1).posts.create(post_params)
        @post = User.first.posts.create(post_params)
        if @post.id
            redirect_to :posts
        else
            render :new
        end
    end

end
