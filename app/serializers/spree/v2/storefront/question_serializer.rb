module Spree
  module V2
    module Storefront
      class QuestionSerializer < BaseSerializer
        set_type :question

        attributes :content, :is_visible
        
        has_one :user
        has_one :product
      end
    end
  end
end