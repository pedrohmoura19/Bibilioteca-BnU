class Tag < ApplicationRecord
  has_many :tags_book, dependent: :destroy
  has_many :books, :through => :tags_book
  
  validates :name, presence:true
  validates :category,
  :inclusion => {:in =>['Semestre','Disciplina','Outros','Licenciatura','Bacharelado'],
  :message   => "%{value} não é uma categoria disponível"}
end
