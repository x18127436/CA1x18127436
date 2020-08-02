class Game < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items
  #has_many :line_items, dependent: :destroy

  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line

  validates :title, :brand, :price, :publisher, :genre, :release_year, :image, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 7 }

  BRAND = %w{ NintendoSwitch PlayStation1 PlayStation2 PlayStation3 PlayStation4 Wii WiiU XBox360 XBoxOne }
  GENRE = %w{ Action Adventure Figth Misc Shooter Sports Strategy Survival Racing RPG Others}
  RELEASE_YEAR = %w{ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 Release }
  AGERATING = %w{ +8 +9 +10 +11 +12 +13 +14 +15 +16 +17 +18 }

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Please remove Item from your cart before")
      throw :abort
    end
  end

end
