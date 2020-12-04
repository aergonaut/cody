# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Repository`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
class Repository
  include Repository::GeneratedAssociationMethods
  include Repository::GeneratedAttributeMethods
end

module Repository::GeneratedAssociationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(::Installation) }
  def build_installation(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::Installation) }
  def create_installation(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(::Installation) }
  def create_installation!(*args, &blk); end

  sig { returns(T.nilable(::Installation)) }
  def installation; end

  sig { params(value: T.nilable(::Installation)).void }
  def installation=(value); end

  sig { returns(T::Array[T.untyped]) }
  def pull_request_ids; end

  sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
  def pull_request_ids=(ids); end

  sig { returns(::ActiveRecord::Associations::CollectionProxy[PullRequest]) }
  def pull_requests; end

  sig { params(value: T::Enumerable[::PullRequest]).void }
  def pull_requests=(value); end

  sig { returns(T.nilable(::Installation)) }
  def reload_installation; end

  sig { returns(T::Array[T.untyped]) }
  def review_rule_ids; end

  sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
  def review_rule_ids=(ids); end

  sig { returns(::ActiveRecord::Associations::CollectionProxy[ReviewRule]) }
  def review_rules; end

  sig { params(value: T::Enumerable[::ReviewRule]).void }
  def review_rules=(value); end

  sig { returns(T::Array[T.untyped]) }
  def setting_ids; end

  sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
  def setting_ids=(ids); end

  sig { returns(::ActiveRecord::Associations::CollectionProxy[Setting]) }
  def settings; end

  sig { params(value: T::Enumerable[::Setting]).void }
  def settings=(value); end
end

module Repository::GeneratedAttributeMethods
  sig { returns(T.nilable(::String)) }
  def config_hash; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def config_hash=(value); end

  sig { returns(T::Boolean) }
  def config_hash?; end

  sig { returns(T.nilable(::String)) }
  def config_hash_before_last_save; end

  sig { returns(T.untyped) }
  def config_hash_before_type_cast; end

  sig { returns(T::Boolean) }
  def config_hash_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def config_hash_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def config_hash_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def config_hash_changed?; end

  sig { returns(T.nilable(::String)) }
  def config_hash_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def config_hash_previous_change; end

  sig { returns(T::Boolean) }
  def config_hash_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def config_hash_previously_was; end

  sig { returns(T.nilable(::String)) }
  def config_hash_was; end

  sig { void }
  def config_hash_will_change!; end

  sig { returns(T.nilable(::Integer)) }
  def github_id; end

  sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
  def github_id=(value); end

  sig { returns(T::Boolean) }
  def github_id?; end

  sig { returns(T.nilable(::Integer)) }
  def github_id_before_last_save; end

  sig { returns(T.untyped) }
  def github_id_before_type_cast; end

  sig { returns(T::Boolean) }
  def github_id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def github_id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def github_id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def github_id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def github_id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def github_id_previous_change; end

  sig { returns(T::Boolean) }
  def github_id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def github_id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def github_id_was; end

  sig { void }
  def github_id_will_change!; end

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

  sig { returns(T.nilable(::Integer)) }
  def installation_id; end

  sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
  def installation_id=(value); end

  sig { returns(T::Boolean) }
  def installation_id?; end

  sig { returns(T.nilable(::Integer)) }
  def installation_id_before_last_save; end

  sig { returns(T.untyped) }
  def installation_id_before_type_cast; end

  sig { returns(T::Boolean) }
  def installation_id_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def installation_id_change; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def installation_id_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def installation_id_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def installation_id_in_database; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def installation_id_previous_change; end

  sig { returns(T::Boolean) }
  def installation_id_previously_changed?; end

  sig { returns(T.nilable(::Integer)) }
  def installation_id_previously_was; end

  sig { returns(T.nilable(::Integer)) }
  def installation_id_was; end

  sig { void }
  def installation_id_will_change!; end

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

  sig { returns(T.nilable(::String)) }
  def owner; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def owner=(value); end

  sig { returns(T::Boolean) }
  def owner?; end

  sig { returns(T.nilable(::String)) }
  def owner_before_last_save; end

  sig { returns(T.untyped) }
  def owner_before_type_cast; end

  sig { returns(T::Boolean) }
  def owner_came_from_user?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def owner_change; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def owner_change_to_be_saved; end

  sig { returns(T::Boolean) }
  def owner_changed?; end

  sig { returns(T.nilable(::String)) }
  def owner_in_database; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def owner_previous_change; end

  sig { returns(T::Boolean) }
  def owner_previously_changed?; end

  sig { returns(T.nilable(::String)) }
  def owner_previously_was; end

  sig { returns(T.nilable(::String)) }
  def owner_was; end

  sig { void }
  def owner_will_change!; end

  sig { void }
  def restore_config_hash!; end

  sig { void }
  def restore_github_id!; end

  sig { void }
  def restore_id!; end

  sig { void }
  def restore_installation_id!; end

  sig { void }
  def restore_name!; end

  sig { void }
  def restore_owner!; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_config_hash; end

  sig { returns(T::Boolean) }
  def saved_change_to_config_hash?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_github_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_github_id?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_id?; end

  sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
  def saved_change_to_installation_id; end

  sig { returns(T::Boolean) }
  def saved_change_to_installation_id?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_name; end

  sig { returns(T::Boolean) }
  def saved_change_to_name?; end

  sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
  def saved_change_to_owner; end

  sig { returns(T::Boolean) }
  def saved_change_to_owner?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_config_hash?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_github_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_installation_id?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_name?; end

  sig { returns(T::Boolean) }
  def will_save_change_to_owner?; end
end