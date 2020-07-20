class Author

    attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select{|book_author| book_author.author == self }
    end

    def books
        self.book_authors.map{|book_author| book_author.book}.uniq
    end




    # def write_book(title, word_count)
    #     Book.new(self, title, word_count)
    # end

    # def total_words
    #     self.books.reduce(0) do |all_the_words, book|
    #        all_the_words + book.word_count
    #     end
    # end

    
    # How to do total_words with sum:
    # def total_words_with_sum
    #     self.books.sum do |book|
    #        book.word_count
    #     end
    # end


    # def self.most_words
    #     self.all.max_by do |author|
    #         author.total_words
    #     end

    # end

end