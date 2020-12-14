# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sdoc` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

class RDoc::ClassModule < ::RDoc::Context
  def with_documentation?; end
end

class RDoc::Generator::SDoc
  include(::ERB::Util)
  include(::SDoc::GitHub)
  include(::SDoc::Templatable)
  include(::SDoc::Helpers)

  def initialize(store, options); end

  def base_dir; end
  def class_dir; end
  def file_dir; end
  def generate; end
  def options; end
  def store; end

  protected

  def copy_resources; end
  def debug_msg(*msg); end
  def generate_class_files; end
  def generate_class_tree; end
  def generate_class_tree_level(classes, visited = T.unsafe(nil)); end
  def generate_file_files; end
  def generate_file_tree; end
  def generate_file_tree_level(tree); end
  def generate_index_file; end
  def generate_search_index; end
  def index; end
  def index_path; end

  class << self
    def setup_options(options); end
  end
end

RDoc::Generator::SDoc::CLASS_DIR = T.let(T.unsafe(nil), String)

RDoc::Generator::SDoc::DESCRIPTION = T.let(T.unsafe(nil), String)

RDoc::Generator::SDoc::FILE_DIR = T.let(T.unsafe(nil), String)

class RDoc::Generator::SDoc::FilesTree
  def add(path, url); end
  def children; end
end

RDoc::Generator::SDoc::GENERATOR_DIRS = T.let(T.unsafe(nil), Array)

RDoc::Generator::SDoc::RESOURCES_DIR = T.let(T.unsafe(nil), String)

RDoc::Generator::SDoc::SEARCH_INDEX_FILE = T.let(T.unsafe(nil), String)

RDoc::Generator::SDoc::TREE_FILE = T.let(T.unsafe(nil), String)

class RDoc::Options
  def github; end
  def github=(_arg0); end
  def search_index; end
  def search_index=(_arg0); end
end

module SDoc
end

module SDoc::GitHub
  def github_url(path); end

  protected

  def have_git?; end
  def last_commit_sha1; end
  def path_relative_to_repository(path); end
  def path_to_git_dir(path); end
  def repository_url(path); end
end

module SDoc::Helpers
  def each_letter_group(methods, &block); end
  def strip_tags(text); end
  def truncate(text, options = T.unsafe(nil)); end

  protected

  def group_name(name); end
end

module SDoc::Templatable
  def eval_template(templatefile, context); end
  def include_template(template_name, local_assigns = T.unsafe(nil)); end
  def render_template(templatefile, context, outfile); end
end

SDoc::VERSION = T.let(T.unsafe(nil), String)
