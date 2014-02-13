class Spree::Question < ActiveRecord::Base
  belongs_to :product
  has_one :answer, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :answer

  scope :visible, ->{ where(is_visible: true) }

  validates :content, presence: true

  def answer_for_form
    self.answer.present? ? self.answer : self.build_answer
  end
end
