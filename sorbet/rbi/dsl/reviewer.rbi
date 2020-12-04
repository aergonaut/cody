# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Reviewer`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
class Reviewer
  include Reviewer::GeneratedAssociationMethods
  include Reviewer::GeneratedAttributeMethods
  extend Reviewer::GeneratedRelationMethods
end

module Reviewer::GeneratedAssociationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(::PullRequest) }
  def build_pull_request(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::ReviewRule) }
  def build_review_rule(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::PullRequest) }
  def create_pull_request(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::PullRequest) }
  def create_pull_request!(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::ReviewRule) }
  def create_review_rule(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::ReviewRule) }
  def create_review_rule!(*args, &blk); end

  sig { returns(T.nilable(::PullRequest)) }
  def pull_request; end

  sig { params(value: T.nilable(::PullRequest)).void }
  def pull_request=(value); end

  sig { returns(T.nilable(::PullRequest)) }
  def reload_pull_request; end

  sig { returns(T.nilable(::ReviewRule)) }
  def reload_review_rule; end

  sig { returns(T.nilable(::ReviewRule)) }
  def review_rule; end

  sig { params(value: T.nilable(::ReviewRule)).void }
  def review_rule=(value); end

  sig { returns(T::Array[T.untyped]) }
  def version_ids; end

  sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
  def version_ids=(ids); end

  sig { returns(::ActiveRecord::Associations::CollectionProxy[PaperTrail::Version]) }
  def versions; end

  sig { params(value: T::Enumerable[::PaperTrail::Version]).void }
  def versions=(value); end
end

module Reviewer::GeneratedAttributeMethods
  sig { returns(T.nilable(::String)) }
  def context; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def context=(value); end

  sig { returns(T::Boolean) }
  def context?; end

  sig { returns(T.nilable(::String)) }
  def context_before_last_save; end

  sig { returns(T.untyped) }
  def context_before_type_cast; end

  sig { returns(T::Boolean) }
  def context_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def context_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def context_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def context_changed?; end

  sig { returns(T.nilable(::String)) }
  def context_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def context_previous_change; end

  sig { returns(T::Boolean) }
  def context_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def context_previously_was; end

  sig { returns(T.nilable(::String)) }
  def context_was; end

  sig { void }
  def context_will_change!; end

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
  def login; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def login=(value); end

  sig { returns(T::Boolean) }
  def login?; end

  sig { returns(T.nilable(::String)) }
  def login_before_last_save; end

  sig { returns(T.untyped) }
  def login_before_type_cast; end

  sig { returns(T::Boolean) }
  def login_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def login_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def login_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def login_changed?; end

  sig { returns(T.nilable(::String)) }
  def login_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def login_previous_change; end

  sig { returns(T::Boolean) }
  def login_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def login_previously_was; end

  sig { returns(T.nilable(::String)) }
  def login_was; end

  sig { void }
  def login_will_change!; end

  sig { returns(T.nilable(::Integer)) }
  def pull_request_id; end

  sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
  def pull_request_id=(value); end

  sig { returns(T::Boolean) }
  def pull_request_id?; end

  sig { returns(T.nilable(::Integer)) }
  def pull_request_id_before_last_save; end

  sig { returns(T.untyped) }
  def pull_request_id_before_type_cast; end

  sig { returns(T::Boolean) }
  def pull_request_id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def pull_request_id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def pull_request_id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def pull_request_id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def pull_request_id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def pull_request_id_previous_change; end

  sig { returns(T::Boolean) }
  def pull_request_id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def pull_request_id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def pull_request_id_was; end

  sig { void }
  def pull_request_id_will_change!; end

  sig { void }
  def restore_context!; end

  sig { void }
  def restore_created_at!; end

  sig { void }
  def restore_id!; end

  sig { void }
  def restore_login!; end

  sig { void }
  def restore_pull_request_id!; end

  sig { void }
  def restore_review_rule_id!; end

  sig { void }
  def restore_status!; end

  sig { void }
  def restore_updated_at!; end

  sig { returns(T.nilable(::Integer)) }
  def review_rule_id; end

  sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
  def review_rule_id=(value); end

  sig { returns(T::Boolean) }
  def review_rule_id?; end

  sig { returns(T.nilable(::Integer)) }
  def review_rule_id_before_last_save; end

  sig { returns(T.untyped) }
  def review_rule_id_before_type_cast; end

  sig { returns(T::Boolean) }
  def review_rule_id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def review_rule_id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def review_rule_id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def review_rule_id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def review_rule_id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def review_rule_id_previous_change; end

  sig { returns(T::Boolean) }
  def review_rule_id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def review_rule_id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def review_rule_id_was; end

  sig { void }
  def review_rule_id_will_change!; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_context; end

  sig { returns(T::Boolean) }
  def saved_change_to_context?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def saved_change_to_created_at; end

  sig { returns(T::Boolean) }
  def saved_change_to_created_at?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_id?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_login; end

  sig { returns(T::Boolean) }
  def saved_change_to_login?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_pull_request_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_pull_request_id?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_review_rule_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_review_rule_id?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_status; end

  sig { returns(T::Boolean) }
  def saved_change_to_status?; end

  sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
  def saved_change_to_updated_at; end

  sig { returns(T::Boolean) }
  def saved_change_to_updated_at?; end

  sig { returns(T.nilable(::String)) }
  def status; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def status=(value); end

  sig { returns(T::Boolean) }
  def status?; end

  sig { returns(T.nilable(::String)) }
  def status_before_last_save; end

  sig { returns(T.untyped) }
  def status_before_type_cast; end

  sig { returns(T::Boolean) }
  def status_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def status_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def status_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def status_changed?; end

  sig { returns(T.nilable(::String)) }
  def status_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def status_previous_change; end

  sig { returns(T::Boolean) }
  def status_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def status_previously_was; end

  sig { returns(T.nilable(::String)) }
  def status_was; end

  sig { void }
  def status_will_change!; end

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
  def will_save_change_to_context?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_created_at?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_login?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_pull_request_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_review_rule_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_status?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_updated_at?; end
end

module Reviewer::GeneratedRelationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def completed_review(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def from_rule(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def pending_review(*args, &blk); end
end