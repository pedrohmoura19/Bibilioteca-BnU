class Book < ApplicationRecord

    has_many :tags_books, dependent: :destroy
    has_many :books, :through => :tags_books

    has_one_attached :photo
    has_one_attached :document

    validates  :title, presence:true
    validates  :author, presence: true
    validates  :year, presence:true

end
