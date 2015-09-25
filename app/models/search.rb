class Search < ActiveRecord::Base

  def search_books
    books= Book.all
    books=books.where(["isbn LIKE ? and title LIKE ? and description LIKE ? and author LIKE ? ", "%#{isbn}%", "%#{title}%", "%#{description}%", "%#{author}%"])
    return books
  end
end
