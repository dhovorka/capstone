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
    user_id: current_user.id,
    tournament_id: params[:tournament_id],
    content: params[:content]
    )
  if @comment.save
  render "show.json.jbuilder"
  else
  render json: {errors: @comment.errors.full_messages}, status: :unprocessible_entity
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
