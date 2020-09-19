module Spree
  module V2
    module Storefront
      class AnswerSerializer < BaseSerializer
        set_type :answer

        attributes :content
        
        has_one :question
        has_one :user
        has_one :product
      end
    end
  end
end