# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GraphiQL::Rails::EditorsController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module GraphiQL
  module Rails
    class EditorsController
      sig { returns(GraphiQL::Rails::EditorsController::HelperProxy) }
      def helpers; end
    end
  end
end

module GraphiQL::Rails::EditorsController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include Webpacker::Helper

  sig { returns(T.untyped) }
  def graphql_endpoint_path; end
end

class GraphiQL::Rails::EditorsController::HelperProxy < ::ActionView::Base
  include GraphiQL::Rails::EditorsController::HelperMethods
end