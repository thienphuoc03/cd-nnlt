require_relative "Document"

class Book < Document
    attr_accessor :author_143, :pageNumber_143

    def initialize(id_143, publishCompany_143, releaseNumber_143, author_143, pageNumber_143)
        super(id_143, publishCompany_143, releaseNumber_143)
        @author_143 = author_143
        @pageNumber_143 = pageNumber_143
    end

    def showInfor()
        puts("Id: #{@id_143}, Publish Company: #{@publishCompany_143}, Release Number: #{@releaseNumber_143}, Author: #{@author_143}, Number Page: #{@pageNumber_143}")
    end
end