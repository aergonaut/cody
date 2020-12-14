# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ReviewRuleAlways`.
# Please instead update this file by running `tapioca dsl --gen ActiveRecordColumns ActiveRecordAssociations ActiveRecordScope`.

# typed: strict
class ReviewRuleAlways
  include ReviewRuleAlways::GeneratedAssociationMethods
  include ReviewRuleAlways::GeneratedAttributeMethods
end

module ReviewRuleAlways::GeneratedAssociationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(::Repository) }
  def build_repository(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::Repository) }
  def create_repository(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::Repository) }
  def create_repository!(*args, &blk); end

  sig { returns(T.nilable(::Repository)) }
  def reload_repository; end

  sig { returns(T.nilable(::Repository)) }
  def repository; end

  sig { params(value: T.nilable(::Repository)).void }
  def repository=(value); end
end

module ReviewRuleAlways::GeneratedAttributeMethods
  sig { returns(T.nilable(T::Boolean)) }
  def active; end

  sig { params(value: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
  def active=(value); end

  sig { returns(T::Boolean) }
  def active?; end

  sig { returns(T.nilable(T::Boolean)) }
  def active_before_last_save; end

  sig { returns(T.untyped) }
  def active_before_type_cast; end

  sig { returns(T::Boolean) }
  def active_came_from_user?; end

  sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
  def active_change; end

  sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
  def active_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def active_changed?; end

  sig { returns(T.nilable(T::Boolean)) }
  def active_in_database; end

  sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
  def active_previous_change; end

  sig { returns(T::Boolean) }
  def active_previously_changed?; end

  sig { returns(T.nilable(T::Boolean)) }
  def active_previously_was; end

  sig { returns(T.nilable(T::Boolean)) }
  def active_was; end

  sig { void }
  def active_will_change!; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def created_at; end

  sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def created_at_before_last_save; end

  sig { returns(T.untyped) }
  def created_at_before_type_cast; end

  sig { returns(T::Boolean) }
  def created_at_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def created_at_change; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def created_at_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def created_at_changed?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def created_at_in_database; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def created_at_previous_change; end

  sig { returns(T::Boolean) }
  def created_at_previously_changed?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def created_at_previously_was; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def created_at_was; end

  sig { void }
  def created_at_will_change!; end

  sig { returns(T.nilable(::String)) }
  def file_match; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def file_match=(value); end

  sig { returns(T::Boolean) }
  def file_match?; end

  sig { returns(T.nilable(::String)) }
  def file_match_before_last_save; end

  sig { returns(T.untyped) }
  def file_match_before_type_cast; end

  sig { returns(T::Boolean) }
  def file_match_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def file_match_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def file_match_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def file_match_changed?; end

  sig { returns(T.nilable(::String)) }
  def file_match_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def file_match_previous_change; end

  sig { returns(T::Boolean) }
  def file_match_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def file_match_previously_was; end

  sig { returns(T.nilable(::String)) }
  def file_match_was; end

  sig { void }
  def file_match_will_change!; end

  sig { returns(T.nilable(::Integer)) }
  def id; end

  sig { params(value: ::Integer).returns(::Integer) }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(::Integer)) }
  def id_before_last_save; end

  sig { returns(T.untyped) }
  def id_before_type_cast; end

  sig { returns(T::Boolean) }
  def id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def id_previous_change; end

  sig { returns(T::Boolean) }
  def id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def id_was; end

  sig { void }
  def id_will_change!; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def name=(value); end

  sig { returns(T::Boolean) }
  def name?; end

  sig { returns(T.nilable(::String)) }
  def name_before_last_save; end

  sig { returns(T.untyped) }
  def name_before_type_cast; end

  sig { returns(T::Boolean) }
  def name_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def name_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def name_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def name_changed?; end

  sig { returns(T.nilable(::String)) }
  def name_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def name_previous_change; end

  sig { returns(T::Boolean) }
  def name_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def name_previously_was; end

  sig { returns(T.nilable(::String)) }
  def name_was; end

  sig { void }
  def name_will_change!; end

  sig { returns(T.nilable(::Integer)) }
  def repository_id; end

  sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
  def repository_id=(value); end

  sig { returns(T::Boolean) }
  def repository_id?; end

  sig { returns(T.nilable(::Integer)) }
  def repository_id_before_last_save; end

  sig { returns(T.untyped) }
  def repository_id_before_type_cast; end

  sig { returns(T::Boolean) }
  def repository_id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def repository_id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def repository_id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def repository_id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def repository_id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def repository_id_previous_change; end

  sig { returns(T::Boolean) }
  def repository_id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def repository_id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def repository_id_was; end

  sig { void }
  def repository_id_will_change!; end

  sig { void }
  def restore_active!; end

  sig { void }
  def restore_created_at!; end

  sig { void }
  def restore_file_match!; end

  sig { void }
  def restore_id!; end

  sig { void }
  def restore_name!; end

  sig { void }
  def restore_repository_id!; end

  sig { void }
  def restore_reviewer!; end

  sig { void }
  def restore_short_code!; end

  sig { void }
  def restore_type!; end

  sig { void }
  def restore_updated_at!; end

  sig { returns(T.nilable(::String)) }
  def reviewer; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def reviewer=(value); end

  sig { returns(T::Boolean) }
  def reviewer?; end

  sig { returns(T.nilable(::String)) }
  def reviewer_before_last_save; end

  sig { returns(T.untyped) }
  def reviewer_before_type_cast; end

  sig { returns(T::Boolean) }
  def reviewer_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def reviewer_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def reviewer_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def reviewer_changed?; end

  sig { returns(T.nilable(::String)) }
  def reviewer_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def reviewer_previous_change; end

  sig { returns(T::Boolean) }
  def reviewer_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def reviewer_previously_was; end

  sig { returns(T.nilable(::String)) }
  def reviewer_was; end

  sig { void }
  def reviewer_will_change!; end

  sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
  def saved_change_to_active; end

  sig { returns(T::Boolean) }
  def saved_change_to_active?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def saved_change_to_created_at; end

  sig { returns(T::Boolean) }
  def saved_change_to_created_at?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_file_match; end

  sig { returns(T::Boolean) }
  def saved_change_to_file_match?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_id?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_name; end

  sig { returns(T::Boolean) }
  def saved_change_to_name?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_repository_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_repository_id?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_reviewer; end

  sig { returns(T::Boolean) }
  def saved_change_to_reviewer?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_short_code; end

  sig { returns(T::Boolean) }
  def saved_change_to_short_code?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_type; end

  sig { returns(T::Boolean) }
  def saved_change_to_type?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def saved_change_to_updated_at; end

  sig { returns(T::Boolean) }
  def saved_change_to_updated_at?; end

  sig { returns(T.nilable(::String)) }
  def short_code; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def short_code=(value); end

  sig { returns(T::Boolean) }
  def short_code?; end

  sig { returns(T.nilable(::String)) }
  def short_code_before_last_save; end

  sig { returns(T.untyped) }
  def short_code_before_type_cast; end

  sig { returns(T::Boolean) }
  def short_code_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def short_code_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def short_code_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def short_code_changed?; end

  sig { returns(T.nilable(::String)) }
  def short_code_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def short_code_previous_change; end

  sig { returns(T::Boolean) }
  def short_code_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def short_code_previously_was; end

  sig { returns(T.nilable(::String)) }
  def short_code_was; end

  sig { void }
  def short_code_will_change!; end

  sig { returns(T.nilable(::String)) }
  def type; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def type=(value); end

  sig { returns(T::Boolean) }
  def type?; end

  sig { returns(T.nilable(::String)) }
  def type_before_last_save; end

  sig { returns(T.untyped) }
  def type_before_type_cast; end

  sig { returns(T::Boolean) }
  def type_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def type_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def type_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def type_changed?; end

  sig { returns(T.nilable(::String)) }
  def type_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def type_previous_change; end

  sig { returns(T::Boolean) }
  def type_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def type_previously_was; end

  sig { returns(T.nilable(::String)) }
  def type_was; end

  sig { void }
  def type_will_change!; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def updated_at; end

  sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def updated_at_before_last_save; end

  sig { returns(T.untyped) }
  def updated_at_before_type_cast; end

  sig { returns(T::Boolean) }
  def updated_at_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def updated_at_change; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def updated_at_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def updated_at_changed?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def updated_at_in_database; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def updated_at_previous_change; end

  sig { returns(T::Boolean) }
  def updated_at_previously_changed?; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def updated_at_previously_was; end

  sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
  def updated_at_was; end

  sig { void }
  def updated_at_will_change!; end

  sig { returns(T::Boolean) }
  def will_save_change_to_active?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_created_at?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_file_match?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_name?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_repository_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_reviewer?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_short_code?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_type?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_updated_at?; end
end