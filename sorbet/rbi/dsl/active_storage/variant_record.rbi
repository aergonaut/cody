# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::VariantRecord`.
# Please instead update this file by running `tapioca dsl --gen ActiveRecordColumns ActiveRecordAssociations ActiveRecordScope`.

# typed: strict
module ActiveStorage
  class VariantRecord
    include ActiveStorage::VariantRecord::GeneratedAssociationMethods
    extend ActiveStorage::VariantRecord::GeneratedRelationMethods
  end
end

module ActiveStorage::VariantRecord::GeneratedAssociationMethods
  sig { returns(T.nilable(T.untyped)) }
  def blob; end

  sig { params(value: T.nilable(T.untyped)).void }
  def blob=(value); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_image_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_image_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_blob!(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_image_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_image_attachment!(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_image_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_image_blob!(*args, &blk); end

  sig { returns(T.nilable(T.untyped)) }
  def image_attachment; end

  sig { params(value: T.nilable(T.untyped)).void }
  def image_attachment=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def image_blob; end

  sig { params(value: T.nilable(T.untyped)).void }
  def image_blob=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def reload_blob; end

  sig { returns(T.nilable(T.untyped)) }
  def reload_image_attachment; end

  sig { returns(T.nilable(T.untyped)) }
  def reload_image_blob; end
end

module ActiveStorage::VariantRecord::GeneratedRelationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def with_attached_image(*args, &blk); end
end