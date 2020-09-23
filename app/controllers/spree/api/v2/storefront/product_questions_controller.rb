module Spree
  module Api
    module V2
      module Storefront
        class ProductQuestionsController < ::Spree::Api::V2::BaseController
          include Spree::Api::V2::CollectionOptionsHelpers
          before_action :load_product, only: [:index]
          
          def index
            render_serialized_payload {serialize_collection(paginated_collection)}
          end  

          def show
            render_serialized_payload { serialize_resource(resource) }
          end

          private

          def scope
            Spree::ProductQuestion
          end

          def resource
            scope.find(params[:id])
          end

          def resource_serializer
            Spree::V2::Storefront::ProductQuestionSerializer
          end

          def collection_serializer
            Spree::V2::Storefront::ProductQuestionSerializer
          end

          def paginated_collection
            collection_paginator.new(collection, params).call
          end

          def collection
            Spree::ProductQuestion.visible.where(product: @product)
          end

          def load_product
            @product = Spree::Product.friendly.find(params[:product_id])
          end
        end
      end
    end
  end
end