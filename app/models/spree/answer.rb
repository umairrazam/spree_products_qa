class Spree::Answer < ActiveRecord::Base
  belongs_to :question

  validates :content, presence: true

  after_create :send_email, if: ->() { Redis.current.connected? }

  def send_email
    QaMailerWorker.perform_async(self.question.id) if self.question.present?
  end
end
