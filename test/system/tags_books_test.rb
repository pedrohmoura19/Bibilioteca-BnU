require "application_system_test_case"

class TagsBooksTest < ApplicationSystemTestCase
  setup do
    @tags_book = tags_books(:one)
  end

  test "visiting the index" do
    visit tags_books_url
    assert_selector "h1", text: "Tags Books"
  end

  test "creating a Tags book" do
    visit tags_books_url
    click_on "New Tags Book"

    fill_in "Book", with: @tags_book.book_id
    fill_in "Tag", with: @tags_book.tag_id
    click_on "Create Tags book"

    assert_text "Tags book was successfully created"
    click_on "Back"
  end

  test "updating a Tags book" do
    visit tags_books_url
    click_on "Edit", match: :first

    fill_in "Book", with: @tags_book.book_id
    fill_in "Tag", with: @tags_book.tag_id
    click_on "Update Tags book"

    assert_text "Tags book was successfully updated"
    click_on "Back"
  end

  test "destroying a Tags book" do
    visit tags_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tags book was successfully destroyed"
  end
end
