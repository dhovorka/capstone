class Api::CommentsController < ApplicationController

def index
  @comments = Comment.all
  render "index.json.jbuilder"
end

def show
  @comment = Comment.find_by(id: params[:id])
  render "show.json.jbuilder"
end

def create
  @comment = Comment.new(
    content: params[:content],
    user_id: params[:user_id],
    tournament_id: params[:tournament_id],
    )
  if @comment.save
  render "show.json.jbuilder"
end
end

def update
  @comment = Comment.find_by(id: params[:id])
  @comment.content = params[:content] || @comment.content
  @comment.save
end

def destroy
  @comment = Comment.find_by(id: params[:id])
  @comment.destroy
  render "show.json.jbuilder"
end

end
