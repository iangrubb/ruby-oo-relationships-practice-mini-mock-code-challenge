class BookAuthor

    attr_reader :author, :book

    @@all = []

    def initialize(book, author)
        @author = author
        @book = book
        @@all << self
    end

    def self.all
        @@all
    end

end