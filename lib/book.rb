class Book

  attr_reader :title,
              :author

  def initialize(data)
    @data = data
    @title = data[:title]
    @author = "#{data[:author_first_name]} #{data[:author_last_name]}"
  end

  def publication_year
    @data[:publication_date].split(" ").last
  end
end
