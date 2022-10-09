require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"
require_relative "ManagerDocument"

documents_143 = []
managerDocument_143 = ManagerDocument.new

while(true)
    puts("\nApplication Manager Document")
    puts("Enter 1: To insert document")
    puts("Enter 2: To search document by category")
    puts("Enter 3: To show information documents")
    puts("Enter 4: To remove document by id")
    puts("Enter 5: To exit")

    line_143 = gets.chomp.to_i

    case line_143
    when 1
        puts("\nEnter a: to insert Book")
        puts("Enter b: to insert Newspaper")
        puts("Enter c: to insert Journal")
        type_143 = gets.chomp

        case type_143
        when "a"
            puts("Enter ID: ")
            id_143 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_143 = gets.chomp
            puts("Enter number: ")
            releaseNumber_143 = gets.chomp
            puts("Enter author: ")
            author_143 = gets.chomp
            puts("Enter page number: ")
            pageNumber_143 = gets.chomp

            book_143 = Book.new(id_143, publishCompany_143, releaseNumber_143, author_143, pageNumber_143)
            managerDocument_143.addDocument(documents_143, book_143)
        when "b"
            puts("Enter ID: ")
            id_143 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_143 = gets.chomp
            puts("Enter number: ")
            releaseNumber_143 = gets.chomp
            puts("Enter Day issue:")
            publishDay_143 = gets.chomp

            newspaper_143 = Newspaper.new(id_143, publishCompany_143, releaseNumber_143, publishDay_143)
            managerDocument_143.addDocument(documents_143, newspaper_143)
        when "c"
            puts("Enter ID: ")
            id_143 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_143 = gets.chomp
            puts("Enter number: ")
            releaseNumber_143 = gets.chomp
            puts("Enter issue number: ")
            publishNumber_143 = gets.chomp
            puts("Enter issue month: ")
            publishMonth_143 = gets.chomp

            journal_143 = Journal.new(id_143, publishCompany_143, releaseNumber_143, publishNumber_143, publishMonth_143)
            managerDocument_143.addDocument(documents_143, journal_143)
        end
    when 2
        puts("Enter a to search book")
        puts("Enter b to search newspaper")
        puts("Enter a to search journal")
        choice_143 = gets.chomp

        case choice_143
        when "a"
            puts "Book:"
            managerDocument_143.searchByBook(documents_143)
        when "b"
            puts "Newspaper:"
            managerDocument_143.searchByNewspaper(documents_143)
        when "c"
            puts "Journal:"
            managerDocument_143.searchByJournal(documents_143)
        end
    when 3
        managerDocument_143.showInfor(documents_143)
    when 4
        puts "Enter id to remove: "
        id_rm_143 = gets.chomp
        managerDocument_143.deleteDocument(id_rm_143, documents_143)
        puts "List of documents: "
        managerDocument_143.showInfor(documents_143)
    when 5
        puts "Exits"
        return
    else
        puts "Invalid"
    end
end