require 'spec_helper'

describe Spree::Admin::QuestionsController do
  stub_authorization!

  describe '#index' do
    let!(:question)                { create(:question) }
    let!(:question_with_answer)    { create(:question_with_answer) }
    let!(:question_without_answer) { create(:question, product: question_with_answer.product) }

    it 'shows all questions for a product' do
      spree_get :index, product_id: question_with_answer.product.permalink
      assigns[:collection].should_not be_empty
      assigns[:collection].should include(question_with_answer, question_without_answer)
      assigns[:collection].should_not include(question)
    end
  end

  describe '#pending' do
    let!(:question_without_answer){ create(:question) }

    it 'shows products with pending questions' do
      spree_get :pending
      assigns[:collection].should_not be_empty
      assigns[:collection].should include(question_without_answer.product)
    end
  end
end
