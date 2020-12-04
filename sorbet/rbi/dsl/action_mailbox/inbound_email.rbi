# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailbox::InboundEmail`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module ActionMailbox
  class InboundEmail
    include ActionMailbox::InboundEmail::EnumMethodsModule
    include ActionMailbox::InboundEmail::GeneratedAssociationMethods
    extend ActionMailbox::InboundEmail::GeneratedRelationMethods

    sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
    def self.statuses; end
  end
end

module ActionMailbox::InboundEmail::EnumMethodsModule
  sig { void }
  def bounced!; end

  sig { returns(T::Boolean) }
  def bounced?; end

  sig { void }
  def delivered!; end

  sig { returns(T::Boolean) }
  def delivered?; end

  sig { void }
  def failed!; end

  sig { returns(T::Boolean) }
  def failed?; end

  sig { void }
  def pending!; end

  sig { returns(T::Boolean) }
  def pending?; end

  sig { void }
  def processing!; end

  sig { returns(T::Boolean) }
  def processing?; end
end

module ActionMailbox::InboundEmail::GeneratedAssociationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_raw_email_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_raw_email_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_raw_email_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_raw_email_attachment!(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_raw_email_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_raw_email_blob!(*args, &blk); end

  sig { returns(T.nilable(T.untyped)) }
  def raw_email_attachment; end

  sig { params(value: T.nilable(T.untyped)).void }
  def raw_email_attachment=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def raw_email_blob; end

  sig { params(value: T.nilable(T.untyped)).void }
  def raw_email_blob=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def reload_raw_email_attachment; end

  sig { returns(T.nilable(T.untyped)) }
  def reload_raw_email_blob; end
end

module ActionMailbox::InboundEmail::GeneratedRelationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def bounced(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def delivered(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def failed(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def not_bounced(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def not_delivered(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def not_failed(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def not_pending(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def not_processing(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def pending(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def processing(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def with_attached_raw_email(*args, &blk); end
end