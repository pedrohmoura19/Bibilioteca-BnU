class Tag < ApplicationRecord
  belongs_to :book
  validates :name, presence:true
  validates :category,
  :inclusion => {:in =>['Semestre','Disciplina','Outros','Licenciatura','Bacharelado'],
  :message   => "%{value} não é uma categoria disponível"}
end
