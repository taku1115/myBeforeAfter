class BooksController < ApplicationController
  before_action :move_to_index

  #コンテンツ一覧ページ
  def index
    @books = Book.all
  end

  #コンテンツ追加ページ
  def new
    @book = Book.new
  end

  #追加コンテンツの保存
  def create
    Book.create(book_params)
    redirect_to books_path
  end

  #コンテンツの削除
  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:name, :amazon_url, :isbn_code, :first_plan, :second_plan, :third_plan).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
