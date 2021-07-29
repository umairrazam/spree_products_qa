module Spree
  module Admin
    class ProductQuestionsController < ResourceController
      belongs_to 'spree/product', find_by: :slug

      def index
        @collection = @collection.page params[:page]
      end

      def update
        if params[:product_question][:is_visible].present?
          @object.update_product
        end  
        invoke_callbacks(:update, :before)
        if @object.update(permitted_resource_params)
          invoke_callbacks(:update, :after)
          respond_with(@object) do |format|
            format.html do
              flash[:success] = flash_message_for(@object, :successfully_updated)
              redirect_to location_after_save
            end
            format.js { render layout: false }
          end
        else
          invoke_callbacks(:update, :fails)
          respond_with(@object) do |format|
            format.html { render action: :edit }
            format.js { render layout: false }
          end
        end
      end

      def pending
        @collection = Spree::ProductQuestion.not_answered.joins(:product).map(&:product)
      end
    end
  end
end
