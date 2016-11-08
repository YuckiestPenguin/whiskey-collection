class Whiskey < ApplicationRecord

  searchkick
  belongs_to :user
  belongs_to :rating

  has_attached_file :image, styles: { medium: "400x600#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_numericality_of :score, :only_integer => true, :allow_nil => true,
      :greater_than_or_equal_to => 1,
      :less_than_or_equal_to => 10,
      :message => "Please use a number between 1 and 10."
end
