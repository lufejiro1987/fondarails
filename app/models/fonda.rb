class Fonda < ApplicationRecord
    validates_presence_of :name, message: 'no puede ir en blanco'
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: 'solo puede llevar letras' }
    validates_uniqueness_of :name, message: 'ya existe, debes usar uno único'
    validates_presence_of :address, message: 'no puede ir en blanco'
end
