require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"

class ManagerDocument
    def initialize

    end

    def addDocument(documents_143, document_143)
        documents_143.push(document_143)
    end

    def deleteDocument(id_143, documents_143)
        for document_143 in documents_143 do
            if document_143.id_143 == id_143
                documents_143.delete(document_143)
                puts("Remove successfully")
            end
        end
    end

    def showInfor(documents_143)
        for document_143 in documents_143 do
            document_143.showInfor
        end
    end

    def searchByBook(documents_143)
        for document_143 in documents_143 do
            if document_143.instance_of? Book
                document_143.showInfor
            end
        end
    end

    def searchByJournal(documents_143)
        for document_143 in documents_143 do
            if document_143.instance_of? Journal
                document_143.showInfor
            end
        end
    end

    def searchByNewspaper(documents_143)
        for document_143 in documents_143 do
            if document_143.instance_of? Newspaper
                document_143.showInfor
            end
        end
    end
end