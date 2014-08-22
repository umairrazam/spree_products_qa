class Spree::Answer < ActiveRecord::Base
  belongs_to :question

  validates :content, presence: true

  after_create :send_email

  def send_email
    QaMailerWorker.perform_async(self.question.id)
  end
end
