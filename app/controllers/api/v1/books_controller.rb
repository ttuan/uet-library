class Api::V1::BooksController  < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to  :json

  def index
    render json: Book.all
  end


  def show
    respond_with  Book.find(params[:id])
  end

  def create
    book  = Book.new(book_params)
    if  book.save
      render  json: book, status: 201,  location: [:api,  book]
    else
      render  json: { errors: book.errors },  status: 422
    end
  end

  def update
    book  = Book.find(params[:id])
    if  book.update(book_params)
      render  json: book, status: 200,  location: [:api,  book]
    else
      render  json: { errors: book.errors },  status: 422
    end
  end

  def destroy
    book  = Book.find(params[:id])
    book.destroy
    head  204
  end

  private
  def book_params
    params.require(:book).permit(:name,  :description,  :author, :category, :publish_year, :image)
  end
end
