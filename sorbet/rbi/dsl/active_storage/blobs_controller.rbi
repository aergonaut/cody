# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::BlobsController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module ActiveStorage
  class BlobsController
    sig { returns(ActiveStorage::BlobsController::HelperProxy) }
    def helpers; end
  end
end

module ActiveStorage::BlobsController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include Webpacker::Helper
end

class ActiveStorage::BlobsController::HelperProxy < ::ActionView::Base
  include ActiveStorage::BlobsController::HelperMethods
end