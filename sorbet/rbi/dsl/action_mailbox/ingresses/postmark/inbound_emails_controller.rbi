# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailbox::Ingresses::Postmark::InboundEmailsController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module ActionMailbox
  module Ingresses
    module Postmark
      class InboundEmailsController
        sig { returns(ActionMailbox::Ingresses::Postmark::InboundEmailsController::HelperProxy) }
        def helpers; end
      end
    end
  end
end

module ActionMailbox::Ingresses::Postmark::InboundEmailsController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include Webpacker::Helper
end

class ActionMailbox::Ingresses::Postmark::InboundEmailsController::HelperProxy < ::ActionView::Base
  include ActionMailbox::Ingresses::Postmark::InboundEmailsController::HelperMethods
end