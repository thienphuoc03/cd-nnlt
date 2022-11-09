require "test_helper"

class BookManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_management = book_managements(:one)
  end

  test "should get index" do
    get book_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_book_management_url
    assert_response :success
  end

  test "should create book_management" do
    assert_difference("BookManagement.count") do
      post book_managements_url, params: { book_management: { back_date_143: @book_management.back_date_143, bm_number_143: @book_management.bm_number_143, book_author_143: @book_management.book_author_143, book_category_143: @book_management.book_category_143, book_id_143: @book_management.book_id_143, book_name_143: @book_management.book_name_143, borrow_date_143: @book_management.borrow_date_143, class_143: @book_management.class_143, full_name_143: @book_management.full_name_143, number_date_143: @book_management.number_date_143, student_id_143: @book_management.student_id_143 } }
    end

    assert_redirected_to book_management_url(BookManagement.last)
  end

  test "should show book_management" do
    get book_management_url(@book_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_management_url(@book_management)
    assert_response :success
  end

  test "should update book_management" do
    patch book_management_url(@book_management), params: { book_management: { back_date_143: @book_management.back_date_143, bm_number_143: @book_management.bm_number_143, book_author_143: @book_management.book_author_143, book_category_143: @book_management.book_category_143, book_id_143: @book_management.book_id_143, book_name_143: @book_management.book_name_143, borrow_date_143: @book_management.borrow_date_143, class_143: @book_management.class_143, full_name_143: @book_management.full_name_143, number_date_143: @book_management.number_date_143, student_id_143: @book_management.student_id_143 } }
    assert_redirected_to book_management_url(@book_management)
  end

  test "should destroy book_management" do
    assert_difference("BookManagement.count", -1) do
      delete book_management_url(@book_management)
    end

    assert_redirected_to book_managements_url
  end
end
