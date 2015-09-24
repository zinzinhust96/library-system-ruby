class Search < ActiveRecord::Base

  def search_books
    books= Book.all
    #
    # books=books.where(["isbn LIKE ?","%#{isbn}%"]) if isbn.present?
    # books=books.where(["title LIKE ?","%#{title}%"]) if title.present?
    # books=books.where(["description LIKE ?","%#{description}%"]) if description.present?
    # books=books.where(["author LIKE ?","%#{author}%"]) if author.present?

    # books=books.where(["lower(isbn) LIKE '%s' AND lower(title) LIKE '%s' AND lower(description) LIKE '%s' AND lower(author) LIKE '%s'?","%#{isbn.to_s.downcase}%","%#{title.to_s.downcase}%","%#{description.to_s.downcase}%","%#{author.to_s.downcase}%"])
    # @books = find(:all, :conditions=> ["isbn LIKE ? and title LIKE ? and description LIKE ? and author LIKE ? ", "%#{isbn}%", "%#{title}%", "%#{description}%", "%#{author}%"])
    books=books.where(["isbn LIKE ? and title LIKE ? and description LIKE ? and author LIKE ? ", "%#{isbn}%", "%#{title}%", "%#{description}%", "%#{author}%"])

    return books
  end

end
