class Book
    def initialize(title, author, page_count)
        @title = title
        @author = author
        @page_count = page_count
    end
    
    def describe
        puts "#{@title} by #{@author} ( #{@page_count} pages)"
    end
end

hobbit = Book.new("The Hobbit", "J.R.R. Tolkien", 320)
hobbit.describe
