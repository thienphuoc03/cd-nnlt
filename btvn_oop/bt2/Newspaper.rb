require_relative "Document"

class Newspaper < Document
    attr_accessor :publishDay_143

    def initialize(id_143, publishCompany_143, releaseNumber_143, publishDay_143)
        super(id_143, publishCompany_143, releaseNumber_143)
        @publishDay_143 = publishDay_143
    end

    def showInfor()
        puts("Id: #{@id_143}, Publish Company: #{@publishCompany_143}, Release Number: #{@releaseNumber_143}, Publish Day: #{@publishDay_143}")
    end
end