class PostsController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        @post = Post.new
    end

    def create
        @user = User.find(params[:user_id])
        @user.posts.create(post_params)
        redirect_to user_path(params[:user_id])
    end

    def destroy
        Post.find(params[:id]).destroy
        redirect_to user_path(params[:user_id])
    end 

    private
    def post_params
        params.require(:post).permit(:image_url)
    end
end