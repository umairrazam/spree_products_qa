module Spree
  module Api
    module V2
      module Storefront
        class ProductQuestionsController < ::Spree::Api::V2::BaseController

          def show
            render_serialized_payload { serialize_resource(resource) }
          end

          private

          def scope
            Spree::Question
          end

          def resource
            scope.find(params[:id])
          end

          def resource_serializer
            Spree::V2::Storefront::QuestionSerializer
          end

        end
      end
    end
  end
end