class Book < ApplicationRecord

    has_many :tags_book
    has_many :books, :through => :tags_book

    has_one_attached :photo
    has_one_attached :document

    validates  :title, presence:true
    validates  :author, presence: true
    validates  :year, presence:true
    validates  :document, content_type: [:pdf]
end
