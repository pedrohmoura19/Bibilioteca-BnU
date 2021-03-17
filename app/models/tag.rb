class Tag < ApplicationRecord
  has_many :tags_books, dependent: :destroy
  has_many :books, :through => :tags_books
  
  validates :name, presence:true
  validates :category,
  :inclusion => {:in =>['Semestre','Disciplina','Outros','Licenciatura','Bacharelado'],
  :message   => "%{value} não é uma categoria disponível"}
end
