# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `WebhooksController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
class WebhooksController
  sig { returns(WebhooksController::HelperProxy) }
  def helpers; end
end

module WebhooksController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include ApplicationHelper
  include Webpacker::Helper
end

class WebhooksController::HelperProxy < ::ActionView::Base
  include WebhooksController::HelperMethods
end