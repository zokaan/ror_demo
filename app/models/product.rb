class Product < ActiveRecord::Base
  belongs_to :category

  has_many :orders
  has_many :buyers, through: :orders, source: :user

  has_many :reviews

  validates :price, numericality: true
  validates_presence_of :name, :price

  scope :cheap,     -> { where('price < 100') }
  scope :expensive, -> { where('price > 100') }
  scope :on_stock,  -> { where(stock: true) }

  def display_stock
    stock ? 'Da' : 'Ne'
  end
end
