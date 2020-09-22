module Spree
  module V2
    module Storefront
      class ProductAnswerSerializer < BaseSerializer
        set_type :product_answer

        attributes :content

        has_one :user
        has_one :product_question
      end
    end
  end
end