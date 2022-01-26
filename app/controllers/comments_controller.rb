class CommentsController < ApplicationController
  
  http_basic_authenticate_with name: "adm", password: "secret", only: :destroy
  
  def create
    @hlicence = Hlicence.find(params[:hlicence_id])
    @comment = @hlicence.comments.create(comment_params)
    redirect_to hlicence_path(@hlicence)
  end

  private

  def destroy
    @hlicence = Hlicence.find(params[:hlicence_id])
    @comment = @hlicence.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@hlicence), status: 303
  end

  def comment_params
      params.require(:comment).permit(:user, :body)
  end
end
