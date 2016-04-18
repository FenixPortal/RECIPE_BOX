class Recipe < ActiveRecord::Base

  has_many :ingredients
  has_many :directions

  accepts_nested_attributes_for

  has_attached_file :image, styles: { medium: "400x400#" },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
