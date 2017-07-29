class Menu < ApplicationRecord
  # validates :name , presence_of: true
  # attr_accessor :name

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
