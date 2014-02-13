module Spree
  module Admin
    class QuestionsController < ResourceController
      belongs_to 'spree/product', find_by: :permalink

      def index
        @collection = @collection.page params[:page]
      end
    end
  end
end
