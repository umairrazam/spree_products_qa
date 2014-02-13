class Spree::Question < ActiveRecord::Base
  belongs_to :product
  has_one :answer
  belongs_to :user
  accepts_nested_attributes_for :answer

  scope :visible, ->{ where(is_visible: true) }
end
