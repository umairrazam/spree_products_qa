require "spec_helper"

describe Spree::Admin::ProductsController do
  stub_authorization!

  describe '#pending_questions' do
    let!(:question_without_answer){ create(:question) }

    it 'shows products with pending questions' do
      spree_get :pending_questions
      assigns[:collection].should_not be_empty
      assigns[:collection].should include(question_without_answer.product)
    end
  end
end
