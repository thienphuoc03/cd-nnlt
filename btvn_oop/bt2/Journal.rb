require_relative "Document"

class Journal < Document
    attr_accessor :publishNumber_143, :publishMonth_143

    def initialize(id_143, publishCompany_143, releaseNumber_143, publishNumber_143, publishMonth_143)
        super(id_143, publishCompany_143, releaseNumber_143)
        @publishNumber_143 = publishNumber_143
        @publishMonth_143 = publishMonth_143
    end

    def showInfor()
        puts("Id: #{@id_143}, Publish Company: #{@publishCompany_143}, Release Number: #{@releaseNumber_143}, Publish Number: #{@publishNumber_143}, Publish Month: #{@publishMonth_143}")
    end
end