# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `transit-ruby` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module Transit

  private

  def jruby?; end

  class << self
    def jruby?; end
  end
end

class Transit::ByteArray < ::Transit::Wrapper
  def to_base64; end
  def to_s; end

  class << self
    def from_base64(data); end
  end
end

module Transit::DateTimeUtil

  private

  def from_millis(millis); end
  def to_millis(v); end

  class << self
    def from_millis(millis); end
    def to_millis(v); end
  end
end

class Transit::Decoder
  def initialize(options = T.unsafe(nil)); end

  def decode(node, cache = T.unsafe(nil), as_map_key = T.unsafe(nil)); end
  def validate_handler(key, handler); end
end

Transit::Decoder::CAN_NOT_OVERRIDE_GROUND_TYPES_MESSAGE = T.let(T.unsafe(nil), String)

Transit::Decoder::ESC_ESC = T.let(T.unsafe(nil), String)

Transit::Decoder::ESC_RES = T.let(T.unsafe(nil), String)

Transit::Decoder::ESC_SUB = T.let(T.unsafe(nil), String)

Transit::Decoder::GROUND_TAGS = T.let(T.unsafe(nil), Array)

Transit::Decoder::HANDLER_CACHE = T.let(T.unsafe(nil), Hash)

Transit::Decoder::IDENTITY = T.let(T.unsafe(nil), Proc)

Transit::Decoder::MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Transit::Decoder::Tag
  def initialize(value); end

  def value; end
end

Transit::ESC = T.let(T.unsafe(nil), String)

Transit::JSON_MAX_INT = T.let(T.unsafe(nil), Integer)

Transit::JSON_MIN_INT = T.let(T.unsafe(nil), Integer)

class Transit::Link
  def initialize(*args); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def href; end
  def name; end
  def prompt; end
  def rel; end
  def render; end
  def to_h; end

  private

  def reconcile_values(map); end
end

Transit::Link::KEYS = T.let(T.unsafe(nil), Array)

Transit::Link::RENDER_VALUES = T.let(T.unsafe(nil), Array)

Transit::MAP_AS_ARRAY = T.let(T.unsafe(nil), String)

Transit::MAX_INT = T.let(T.unsafe(nil), Integer)

Transit::MIN_INT = T.let(T.unsafe(nil), Integer)

module Transit::Marshaler
end

module Transit::Marshaler::Base
  def build_handlers(custom_handlers); end
  def emit_array(a, cache); end
  def emit_boolean(handler, b, as_map_key, cache); end
  def emit_double(d, as_map_key, cache); end
  def emit_encoded(handler, tag, obj, as_map_key, cache); end
  def emit_map(m, cache); end
  def emit_nil(as_map_key, cache); end
  def emit_string(prefix, tag, value, as_map_key, cache); end
  def emit_tagged_value(tag, rep, cache); end
  def escape(s); end
  def find_handler(obj); end
  def marshal(obj, as_map_key, cache); end
  def marshal_top(obj, cache = T.unsafe(nil)); end
  def parse_options(opts); end
end

class Transit::Marshaler::BaseJson
  include(::Transit::Marshaler::Base)

  def initialize(io, opts); end

  def emit_array_end; end
  def emit_array_start(size); end
  def emit_int(tag, i, as_map_key, cache); end
  def emit_map_end; end
  def emit_map_start(size); end
  def emit_value(obj, as_map_key = T.unsafe(nil)); end
  def flush; end
end

Transit::Marshaler::HANDLER_CACHE = T.let(T.unsafe(nil), Hash)

class Transit::Marshaler::Json < ::Transit::Marshaler::BaseJson
  def emit_map(m, cache); end
end

Transit::Marshaler::MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Transit::Marshaler::MessagePack
  include(::Transit::Marshaler::Base)

  def initialize(io, opts); end

  def emit_array_end; end
  def emit_array_start(size); end
  def emit_int(tag, i, as_map_key, cache); end
  def emit_map_end; end
  def emit_map_start(size); end
  def emit_value(obj, as_map_key = T.unsafe(nil)); end
  def flush; end
end

Transit::Marshaler::VERBOSE_HANDLER_CACHE = T.let(T.unsafe(nil), Hash)

module Transit::Marshaler::VerboseHandlers
  def build_handlers(custom_handlers); end
end

class Transit::Marshaler::VerboseJson < ::Transit::Marshaler::BaseJson
  include(::Transit::Marshaler::VerboseHandlers)

  def emit_string(prefix, tag, value, as_map_key, cache); end
  def emit_tagged_value(tag, rep, cache); end
end

Transit::QUOTE = T.let(T.unsafe(nil), String)

Transit::RES = T.let(T.unsafe(nil), String)

module Transit::ReadHandlers
end

class Transit::ReadHandlers::BigDecimalHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::BigIntegerHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::BooleanHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::ByteArrayHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::CmapHandler
  def from_rep(v); end
end

Transit::ReadHandlers::DEFAULT_READ_HANDLER = T.let(T.unsafe(nil), Transit::ReadHandlers::Default)

Transit::ReadHandlers::DEFAULT_READ_HANDLERS = T.let(T.unsafe(nil), Hash)

class Transit::ReadHandlers::Default
  def from_rep(tag, val); end
end

class Transit::ReadHandlers::FloatHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::IdentityHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::IntegerHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::KeywordHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::LinkHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::NilHandler
  def from_rep(_); end
end

class Transit::ReadHandlers::RatioHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::SetHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::SpecialNumbersHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::SymbolHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::TimeIntHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::TimeStringHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::UriHandler
  def from_rep(v); end
end

class Transit::ReadHandlers::UuidHandler
  def from_rep(v); end
end

class Transit::Reader
  extend(::Forwardable)

  def initialize(format, io, opts = T.unsafe(nil)); end

  def read(*args, &block); end
end

class Transit::RollingCache
  extend(::Forwardable)

  def initialize; end

  def cache_key?(str, _ = T.unsafe(nil)); end
  def cacheable?(str, as_map_key = T.unsafe(nil)); end
  def has_key?(*args, &block); end
  def read(key); end
  def size(*args, &block); end
  def write(val); end

  private

  def clear; end
  def next_key(i); end
end

Transit::RollingCache::CACHE_CODE_DIGITS = T.let(T.unsafe(nil), Integer)

Transit::RollingCache::CACHE_SIZE = T.let(T.unsafe(nil), Integer)

Transit::RollingCache::FIRST_ORD = T.let(T.unsafe(nil), Integer)

Transit::RollingCache::LAST_ORD = T.let(T.unsafe(nil), Integer)

Transit::RollingCache::MIN_SIZE_CACHEABLE = T.let(T.unsafe(nil), Integer)

Transit::SUB = T.let(T.unsafe(nil), String)

class Transit::Symbol < ::Transit::Wrapper
  def initialize(sym); end

  def name; end
  def namespace; end

  private

  def parsed; end
end

Transit::TAG = T.let(T.unsafe(nil), String)

Transit::TIME_FORMAT = T.let(T.unsafe(nil), String)

class Transit::TaggedValue
  def initialize(tag, rep); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def rep; end
  def tag; end
end

class Transit::UUID
  def initialize(uuid_or_most_significant_bits = T.unsafe(nil), least_significant_bits = T.unsafe(nil)); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def inspect; end
  def least_significant_bits; end
  def most_significant_bits; end
  def to_s; end

  private

  def digits(val, digits); end
  def numbers_to_string; end
  def numeric_rep; end
  def string_to_numbers; end
  def twos_complement(integer_value, num_of_bits = T.unsafe(nil)); end

  class << self
    def random; end
  end
end

module Transit::Unmarshaler
end

class Transit::Unmarshaler::Json
  def initialize(io, opts); end

  def read; end
end

class Transit::Unmarshaler::Json::ParseHandler
  def add_value(v); end
  def array_append(a, v); end
  def array_start; end
  def each(&block); end
  def error(message, line, column); end
  def hash_set(h, k, v); end
  def hash_start; end
end

class Transit::Unmarshaler::MessagePack
  def initialize(io, opts); end

  def read; end
end

class Transit::Wrapper
  extend(::Forwardable)

  def initialize(value); end

  def ==(other); end
  def eql?(other); end
  def hash(*args, &block); end
  def inspect; end
  def to_s(*args, &block); end
  def to_sym(*args, &block); end
  def value; end
end

module Transit::WriteHandlers
end

class Transit::WriteHandlers::AddressableUriHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end

class Transit::WriteHandlers::ArrayHandler
  def rep(a); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::BigDecimalHandler
  def rep(f); end
  def string_rep(f); end
  def tag(_); end
end

class Transit::WriteHandlers::ByteArrayHandler
  def rep(b); end
  def string_rep(b); end
  def tag(_); end
end

Transit::WriteHandlers::DEFAULT_INTEGER_HANDLERS = T.let(T.unsafe(nil), Hash)

Transit::WriteHandlers::DEFAULT_WRITE_HANDLERS = T.let(T.unsafe(nil), Hash)

class Transit::WriteHandlers::DateHandler < ::Transit::WriteHandlers::TimeHandler
  def verbose_handler; end
end

class Transit::WriteHandlers::DateTimeHandler < ::Transit::WriteHandlers::TimeHandler
  def verbose_handler; end
end

class Transit::WriteHandlers::FalseHandler
  def rep(_); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::FloatHandler
  def rep(f); end
  def string_rep(f); end
  def tag(f); end
end

class Transit::WriteHandlers::IntHandler
  def rep(i); end
  def string_rep(i); end
  def tag(i); end
end

class Transit::WriteHandlers::KeywordHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end

class Transit::WriteHandlers::LinkHandler
  def rep(l); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::MapHandler
  def handlers=(handlers); end
  def rep(m); end
  def string_rep(_); end
  def stringable_keys?(m); end
  def tag(m); end
end

class Transit::WriteHandlers::NilHandler
  def rep(_); end
  def string_rep(n); end
  def tag(_); end
end

class Transit::WriteHandlers::RationalHandler
  def rep(r); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::SetHandler
  def rep(s); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::StringHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end

class Transit::WriteHandlers::TaggedValueHandler
  def rep(tv); end
  def string_rep(_); end
  def tag(tv); end
end

class Transit::WriteHandlers::TimeHandler
  def rep(t); end
  def string_rep(t); end
  def tag(_); end
  def verbose_handler; end
end

class Transit::WriteHandlers::TransitSymbolHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end

class Transit::WriteHandlers::TrueHandler
  def rep(_); end
  def string_rep(_); end
  def tag(_); end
end

class Transit::WriteHandlers::UriHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end

class Transit::WriteHandlers::UuidHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end

class Transit::WriteHandlers::VerboseDateHandler < ::Transit::WriteHandlers::VerboseTimeHandler
  def rep(d); end
end

class Transit::WriteHandlers::VerboseDateTimeHandler < ::Transit::WriteHandlers::VerboseTimeHandler
  def rep(t); end
end

class Transit::WriteHandlers::VerboseTimeHandler
  def rep(t); end
  def string_rep(t); end
  def tag(_); end
end

class Transit::Writer
  def initialize(format, io, opts = T.unsafe(nil)); end

  def write(obj); end
end