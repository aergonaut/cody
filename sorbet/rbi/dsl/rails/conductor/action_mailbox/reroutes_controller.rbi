# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::ActionMailbox::ReroutesController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module Rails
  module Conductor
    module ActionMailbox
      class ReroutesController
        sig { returns(Rails::Conductor::ActionMailbox::ReroutesController::HelperProxy) }
        def helpers; end
      end
    end
  end
end

module Rails::Conductor::ActionMailbox::ReroutesController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include ApplicationHelper
  include Webpacker::Helper
end

class Rails::Conductor::ActionMailbox::ReroutesController::HelperProxy < ::ActionView::Base
  include Rails::Conductor::ActionMailbox::ReroutesController::HelperMethods
end