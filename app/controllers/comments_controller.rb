class CommentsController < ApplicationController
    def save
        user_id = User.first.id #suppose logged user is first
        Comment.create user_id: user_id, post_id: params[:id], content: params[:content]
        redirect_to :posts
    end
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to :posts
    end
end
