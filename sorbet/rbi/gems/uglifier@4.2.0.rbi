# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `uglifier` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

class Uglifier
  def initialize(options = T.unsafe(nil)); end

  def compile(source); end
  def compile_with_map(source); end
  def compress(source); end

  private

  def comment_options; end
  def comment_setting; end
  def compressor_options; end
  def conditional_option(value, defaults, overrides = T.unsafe(nil)); end
  def context; end
  def context_lines_message(source, line_number, column); end
  def enclose_options; end
  def encode_regexp(regexp); end
  def error_context_format_options(low, high, line_index, column); end
  def error_context_lines; end
  def error_message(result, options); end
  def extract_source_mapping_url(source); end
  def format_error_line(line, options); end
  def format_lines(lines, options); end
  def harmony?; end
  def harmony_error_message(message); end
  def ie8?; end
  def input_source_map(source, generate_map); end
  def keep_fnames?(type); end
  def mangle_options; end
  def mangle_properties_options; end
  def migrate_braces(options); end
  def negate_iife_block; end
  def output_options; end
  def parse_options; end
  def parse_result(result, generate_map, options); end
  def parse_source_map_options; end
  def quote_style; end
  def read_source(source); end
  def run_uglifyjs(input, generate_map); end
  def sanitize_map_root(map); end
  def source_map_comments; end
  def source_map_options(input_map); end
  def source_with(path); end

  class << self
    def compile(source, options = T.unsafe(nil)); end
    def compile_with_map(source, options = T.unsafe(nil)); end
  end
end

Uglifier::DEFAULTS = T.let(T.unsafe(nil), Hash)

Uglifier::ES5FallbackPath = T.let(T.unsafe(nil), String)

Uglifier::EXTRA_OPTIONS = T.let(T.unsafe(nil), Array)

class Uglifier::Error < ::StandardError
end

Uglifier::HarmonySourcePath = T.let(T.unsafe(nil), String)

Uglifier::MANGLE_PROPERTIES_DEFAULTS = T.let(T.unsafe(nil), Hash)

Uglifier::SOURCE_MAP_DEFAULTS = T.let(T.unsafe(nil), Hash)

Uglifier::SourceMapPath = T.let(T.unsafe(nil), String)

Uglifier::SourcePath = T.let(T.unsafe(nil), String)

Uglifier::SplitFallbackPath = T.let(T.unsafe(nil), String)

Uglifier::UglifyJSWrapperPath = T.let(T.unsafe(nil), String)

Uglifier::VERSION = T.let(T.unsafe(nil), String)