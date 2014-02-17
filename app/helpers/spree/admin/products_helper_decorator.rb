Spree::Admin::ProductsHelper.class_eval do
  def qna_tab_label
    "#{t(:questions_and_answers)} (#{Spree::Question.not_answered.count})"
  end
end
