require "test_helper"

class TagsBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tags_book = tags_books(:one)
  end

  test "should get index" do
    get tags_books_url
    assert_response :success
  end

  test "should get new" do
    get new_tags_book_url
    assert_response :success
  end

  test "should create tags_book" do
    assert_difference('TagsBook.count') do
      post tags_books_url, params: { tags_book: { book_id: @tags_book.book_id, tag_id: @tags_book.tag_id } }
    end

    assert_redirected_to tags_book_url(TagsBook.last)
  end

  test "should show tags_book" do
    get tags_book_url(@tags_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_tags_book_url(@tags_book)
    assert_response :success
  end

  test "should update tags_book" do
    patch tags_book_url(@tags_book), params: { tags_book: { book_id: @tags_book.book_id, tag_id: @tags_book.tag_id } }
    assert_redirected_to tags_book_url(@tags_book)
  end

  test "should destroy tags_book" do
    assert_difference('TagsBook.count', -1) do
      delete tags_book_url(@tags_book)
    end

    assert_redirected_to tags_books_url
  end
end
