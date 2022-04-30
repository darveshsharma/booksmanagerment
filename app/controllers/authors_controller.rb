class AuthorsController < ApplicationController
  def index
  end

  def author_page
    @author = Author.new
    @author.books.build
  end

  def create  
    @author = current_user.authors.new(author_params)
    if @author.save
      render 'home/index'
    end
  end

  def author_params
    params.require(:author).permit(
      :name, :books_count,
      books_attributes: [:id, :name, :price]
    )
  end
end
