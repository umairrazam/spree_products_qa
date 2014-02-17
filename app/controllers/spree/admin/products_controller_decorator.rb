Spree::Admin::ProductsController.class_eval do
  def pending_questions
    @collection = Spree::Question.not_answered.joins(:product).map(&:product)
  end
end
