class ContentsController < ApplicationController
  before_action :move_to_index
  #コンテンツ一覧ページ
  def index
    @contents = Content.all
  end

  #コンテンツ追加ページ
  def new
    @content = Content.new
  end

  #追加コンテンツの保存
  def create
    Content.create(content_params)
    redirect_to contents_path
  end

  #コンテンツの削除
  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to contents_path
  end

  private
  def content_params
    params.require(:content).permit(:name, :url, :first_plan, :second_plan, :third_plan).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
