class TagsBooksController < ApplicationController
  before_action :set_tags_book, only: %i[ show edit update destroy ]

  # GET /tags_books or /tags_books.json
  def index
    @tags_books = TagsBook.all
  end

  # GET /tags_books/1 or /tags_books/1.json
  def show
  end

  # GET /tags_books/new
  def new
    @tags_book = TagsBook.new
    @books = Book.all
    @tags = Tag.all
  end

  # GET /tags_books/1/edit
  def edit
  end

  # POST /tags_books or /tags_books.json
  def create
        @tags_book = TagsBook.new(tags_book_params)

    @books = Book.all
    @tags = Tag.all

    respond_to do |format|
      if @tags_book.save
        format.html { redirect_to @tags_book, notice: "Tags book was successfully created." }
        format.json { render :show, status: :created, location: @tags_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tags_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tags_books/1 or /tags_books/1.json
  def update
    respond_to do |format|
      if @tags_book.update(tags_book_params)
        format.html { redirect_to @tags_book, notice: "Tags book was successfully updated." }
        format.json { render :show, status: :ok, location: @tags_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tags_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_books/1 or /tags_books/1.json
  def destroy
    @tags_book.destroy
    respond_to do |format|
      format.html { redirect_to tags_books_url, notice: "Tags book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tags_book
      @tags_book = TagsBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tags_book_params
      params.require(:tags_book).permit(:tag_id, :book_id)
    end
end
