class CommentsController < ApplicationController
  before_action :set_entry

  def new
    @comment = @entry.comments.new
  end

  def create
    @comment = @entry.comments.new(comment_params.merge({ user: current_user }))
    if @comment.save
      redirect_to entry_path(@entry)
    else
    end
  end

  private

  def set_entry
    @entry = Entry.find(params[:entry_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
