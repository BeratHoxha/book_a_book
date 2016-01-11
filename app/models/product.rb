class Product < ActiveRecord::Base
  has_many :line_items
  has_many :comments
  before_destroy :ensure_no_referenced_by_any_line_item
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, :isbn, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

  def self.latest
    Product.order(:updated_at).last
  end

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end

  def self.search_by_category(search)
     where("category LIKE ?", "%#{search}%") 
  end

  private

  def ensure_no_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
