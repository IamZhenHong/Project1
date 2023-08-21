class CommentsController < ApplicationController
    def create
      @mentor = Mentor.find(params[:mentor_id])
      @comment = @mentor.comments.create(comment_params)
      redirect_to @mentor, notice: 'Comment added successfully!'
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content).merge(mentee_id: current_user.id)
    end
  end
  