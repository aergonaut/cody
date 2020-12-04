# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sentry-ruby` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

class Array
  include(::Enumerable)
  include(::JSON::Ext::Generator::GeneratorMethods::Array)

  def deep_dup; end
end

class BigDecimal < ::Numeric
  include(::ActiveSupport::BigDecimalWithDefaultFormat)
  include(::ActiveSupport::NumericWithFormat)

  def duplicable?; end
end

BigDecimal::EXCEPTION_NaN = T.let(T.unsafe(nil), Integer)

BigDecimal::VERSION = T.let(T.unsafe(nil), String)

class Hash
  include(::Enumerable)
  include(::JSON::Ext::Generator::GeneratorMethods::Hash)

  def deep_dup; end
end

class Method
  include(::MethodSource::SourceLocation::MethodExtensions)
  include(::MethodSource::MethodExtensions)

  def duplicable?; end
end

class Object < ::BasicObject
  include(::ActiveSupport::ToJsonWithActiveSupportEncoder)
  include(::Kernel)
  include(::JSON::Ext::Generator::GeneratorMethods::Object)
  include(::ActiveSupport::Dependencies::Loadable)
  include(::ActiveSupport::Tryable)
  include(::PP::ObjectMixin)

  def deep_dup; end
  def duplicable?; end
end

module Sentry
  class << self
    def breadcrumbs; end
    def capture_event(event); end
    def capture_exception(exception, **options, &block); end
    def capture_message(message, **options, &block); end
    def clone_hub_to_current_thread; end
    def configuration; end
    def configure_scope(&block); end
    def get_current_client; end
    def get_current_hub; end
    def get_current_scope; end
    def get_main_hub; end
    def init(&block); end
    def last_event_id; end
    def logger; end
    def sdk_meta; end
    def send_event(event); end
    def start_transaction(**options); end
    def sys_command(command); end
    def utc_now; end
    def with_scope(&block); end
  end
end

class Sentry::Backtrace
  def initialize(lines); end

  def ==(other); end
  def configuration; end
  def inspect; end
  def lines; end
  def to_s; end

  class << self
    def parse(backtrace, configuration:); end
  end
end

Sentry::Backtrace::APP_DIRS_PATTERN = T.let(T.unsafe(nil), Regexp)

class Sentry::Backtrace::Line
  def initialize(file, number, method, module_name, in_app_pattern); end

  def ==(other); end
  def file; end
  def in_app; end
  def in_app_pattern; end
  def inspect; end
  def method; end
  def module_name; end
  def number; end
  def to_s; end

  class << self
    def parse(unparsed_line, in_app_pattern); end
  end
end

Sentry::Backtrace::Line::JAVA_INPUT_FORMAT = T.let(T.unsafe(nil), Regexp)

Sentry::Backtrace::Line::RB_EXTENSION = T.let(T.unsafe(nil), String)

Sentry::Backtrace::Line::RUBY_INPUT_FORMAT = T.let(T.unsafe(nil), Regexp)

class Sentry::Breadcrumb
  def initialize; end

  def category; end
  def category=(_arg0); end
  def data; end
  def data=(_arg0); end
  def level; end
  def level=(_arg0); end
  def message; end
  def message=(_arg0); end
  def timestamp; end
  def timestamp=(_arg0); end
  def to_hash; end
  def type; end
  def type=(_arg0); end
end

class Sentry::BreadcrumbBuffer
  include(::Enumerable)

  def initialize(size = T.unsafe(nil)); end

  def buffer; end
  def buffer=(_arg0); end
  def dup; end
  def each(&block); end
  def empty?; end
  def members; end
  def peek; end
  def record(crumb = T.unsafe(nil)); end
  def to_hash; end
end

class Sentry::Client
  def initialize(configuration); end

  def capture_event(event, scope); end
  def configuration; end
  def event_from_exception(exception); end
  def event_from_message(message); end
  def event_from_transaction(transaction); end
  def send_event(event); end
  def transport; end
end

class Sentry::Configuration
  def initialize; end

  def app_dirs_pattern; end
  def app_dirs_pattern=(_arg0); end
  def async; end
  def async=(value); end
  def async?; end
  def backtrace_cleanup_callback; end
  def backtrace_cleanup_callback=(_arg0); end
  def before_send; end
  def before_send=(value); end
  def breadcrumbs_logger; end
  def breadcrumbs_logger=(logger); end
  def capture_allowed?(message_or_exc = T.unsafe(nil)); end
  def context_lines; end
  def context_lines=(_arg0); end
  def current_environment; end
  def current_environment=(environment); end
  def dsn; end
  def dsn=(value); end
  def enabled_in_current_env?; end
  def environments; end
  def environments=(_arg0); end
  def error_messages; end
  def errors; end
  def exception_class_allowed?(exc); end
  def exclude_loggers; end
  def exclude_loggers=(_arg0); end
  def excluded_exceptions; end
  def excluded_exceptions=(_arg0); end
  def gem_specs; end
  def inspect_exception_causes_for_exclusion; end
  def inspect_exception_causes_for_exclusion=(_arg0); end
  def inspect_exception_causes_for_exclusion?; end
  def linecache; end
  def linecache=(_arg0); end
  def logger; end
  def logger=(_arg0); end
  def post_initialization_callback; end
  def project_root; end
  def project_root=(root_dir); end
  def rack_env_whitelist; end
  def rack_env_whitelist=(_arg0); end
  def rails; end
  def release; end
  def release=(_arg0); end
  def sample_rate; end
  def sample_rate=(_arg0); end
  def send_default_pii; end
  def send_default_pii=(_arg0); end
  def send_modules; end
  def send_modules=(_arg0); end
  def sending_allowed?(message_or_exc = T.unsafe(nil)); end
  def server=(value); end
  def server_name; end
  def server_name=(_arg0); end
  def should_capture; end
  def should_capture=(value); end
  def traces_sample_rate; end
  def traces_sample_rate=(_arg0); end
  def traces_sampler; end
  def traces_sampler=(_arg0); end
  def tracing_enabled?; end
  def transport; end

  private

  def capture_allowed_by_callback?(message_or_exc); end
  def capture_in_current_environment?; end
  def current_environment_from_env; end
  def detect_project_root; end
  def detect_release; end
  def detect_release_from_capistrano; end
  def detect_release_from_env; end
  def detect_release_from_git; end
  def detect_release_from_heroku; end
  def excluded_exception?(incoming_exception); end
  def excluded_exception_classes; end
  def get_exception_class(x); end
  def matches_exception?(excluded_exception_class, incoming_exception); end
  def resolve_hostname; end
  def running_on_heroku?; end
  def safe_const_get(x); end
  def sample_allowed?; end
  def server_name_from_env; end
  def valid?; end
end

Sentry::Configuration::AVAILABLE_BREADCRUMBS_LOGGERS = T.let(T.unsafe(nil), Array)

Sentry::Configuration::HEROKU_DYNO_METADATA_MESSAGE = T.let(T.unsafe(nil), String)

Sentry::Configuration::IGNORE_DEFAULT = T.let(T.unsafe(nil), Array)

Sentry::Configuration::LOG_PREFIX = T.let(T.unsafe(nil), String)

Sentry::Configuration::MODULE_SEPARATOR = T.let(T.unsafe(nil), String)

Sentry::Configuration::RACK_ENV_WHITELIST_DEFAULT = T.let(T.unsafe(nil), Array)

class Sentry::DSN
  def initialize(dsn_string); end

  def envelope_endpoint; end
  def host; end
  def path; end
  def port; end
  def project_id; end
  def public_key; end
  def scheme; end
  def secret_key; end
  def server; end
  def to_s; end
  def valid?; end
end

Sentry::DSN::PORT_MAP = T.let(T.unsafe(nil), Hash)

Sentry::DSN::REQUIRED_ATTRIBUTES = T.let(T.unsafe(nil), Array)

class Sentry::DummyTransport < ::Sentry::Transport
  def initialize(*_arg0); end

  def events; end
  def events=(_arg0); end
  def send_event(event); end
end

class Sentry::Error < ::StandardError
end

class Sentry::Event
  def initialize(configuration:, message: T.unsafe(nil)); end

  def add_exception_interface(exc); end
  def backtrace; end
  def backtrace=(_arg0); end
  def breadcrumbs; end
  def breadcrumbs=(_arg0); end
  def configuration; end
  def contexts; end
  def contexts=(_arg0); end
  def environment; end
  def environment=(_arg0); end
  def event_id; end
  def event_id=(_arg0); end
  def extra; end
  def extra=(_arg0); end
  def fingerprint; end
  def fingerprint=(_arg0); end
  def level; end
  def level=(new_level); end
  def message; end
  def message=(_arg0); end
  def modules; end
  def modules=(_arg0); end
  def platform; end
  def platform=(_arg0); end
  def rack_env=(env); end
  def release; end
  def release=(_arg0); end
  def sdk; end
  def sdk=(_arg0); end
  def server_name; end
  def server_name=(_arg0); end
  def stacktrace_interface_from(backtrace); end
  def tags; end
  def tags=(_arg0); end
  def timestamp; end
  def timestamp=(time); end
  def to_hash; end
  def to_json_compatible; end
  def transaction; end
  def transaction=(_arg0); end
  def type; end
  def type=(_arg0); end
  def user; end
  def user=(_arg0); end

  private

  def calculate_real_ip_from_rack(env); end
  def serialize_attributes; end

  class << self
    def get_log_message(event_hash); end
    def get_message_from_exception(event_hash); end
  end
end

Sentry::Event::ATTRIBUTES = T.let(T.unsafe(nil), Array)

class Sentry::ExceptionInterface < ::Sentry::Interface
  def to_hash; end
  def values; end
  def values=(_arg0); end
end

class Sentry::HTTPTransport < ::Sentry::Transport
  def initialize(*args); end

  def adapter; end
  def conn; end
  def send_data(data, options = T.unsafe(nil)); end

  private

  def faraday_opts; end
  def set_conn; end
  def ssl_configuration; end
end

class Sentry::Hub
  def initialize(client, scope); end

  def add_breadcrumb(breadcrumb); end
  def bind_client(client); end
  def capture_event(event, **options, &block); end
  def capture_exception(exception, **options, &block); end
  def capture_message(message, **options, &block); end
  def clone; end
  def configure_scope(&block); end
  def current_client; end
  def current_scope; end
  def last_event_id; end
  def new_from_top; end
  def pop_scope; end
  def push_scope; end
  def start_transaction(transaction: T.unsafe(nil), **options); end
  def with_scope(&block); end

  private

  def current_layer; end
end

class Sentry::Hub::Layer
  def initialize(client, scope); end

  def client; end
  def client=(_arg0); end
  def scope; end
end

class Sentry::Interface
  def to_hash; end

  class << self
    def inherited(klass); end
    def registered; end
  end
end

Sentry::LOGGER_PROGNAME = T.let(T.unsafe(nil), String)

class Sentry::LineCache
  def initialize; end

  def get_file_context(filename, lineno, context); end

  private

  def getline(path, n); end
  def getlines(path); end
  def valid_path?(path); end
end

class Sentry::Logger < ::Logger
  def initialize(*_arg0); end
end

Sentry::Logger::LOG_PREFIX = T.let(T.unsafe(nil), String)

Sentry::Logger::PROGNAME = T.let(T.unsafe(nil), String)

Sentry::META = T.let(T.unsafe(nil), Hash)

module Sentry::Rack
end

class Sentry::Rack::CaptureException
  def initialize(app); end

  def call(env); end
  def collect_exception(env); end
end

class Sentry::Rack::Tracing
  def initialize(app); end

  def call(env); end
  def finish_span(span, status_code); end
end

class Sentry::RequestInterface < ::Sentry::Interface
  def initialize; end

  def cookies; end
  def cookies=(_arg0); end
  def data; end
  def data=(_arg0); end
  def env; end
  def env=(_arg0); end
  def from_rack(env_hash); end
  def headers; end
  def headers=(_arg0); end
  def method; end
  def method=(_arg0); end
  def query_string; end
  def query_string=(_arg0); end
  def url; end
  def url=(_arg0); end

  private

  def format_env_for_sentry(env_hash); end
  def format_headers_for_sentry(env_hash); end
  def read_data_from(request); end
  def read_request_id_from(env_hash); end
end

Sentry::RequestInterface::IP_HEADERS = T.let(T.unsafe(nil), Array)

Sentry::RequestInterface::REQUEST_ID_HEADERS = T.let(T.unsafe(nil), Array)

class Sentry::Scope
  def initialize; end

  def add_breadcrumb(breadcrumb); end
  def add_event_processor(&block); end
  def apply_to_event(event); end
  def breadcrumbs; end
  def clear; end
  def clear_breadcrumbs; end
  def contexts; end
  def dup; end
  def event_processors; end
  def extra; end
  def fingerprint; end
  def get_span; end
  def get_transaction; end
  def level; end
  def rack_env; end
  def set_context(key, value); end
  def set_contexts(contexts_hash); end
  def set_extra(key, value); end
  def set_extras(extras_hash); end
  def set_fingerprint(fingerprint); end
  def set_level(level); end
  def set_rack_env(env); end
  def set_span(span); end
  def set_tag(key, value); end
  def set_tags(tags_hash); end
  def set_transaction_name(transaction_name); end
  def set_user(user_hash); end
  def span; end
  def tags; end
  def transaction_name; end
  def transaction_names; end
  def update_from_options(contexts: T.unsafe(nil), extra: T.unsafe(nil), tags: T.unsafe(nil), user: T.unsafe(nil), level: T.unsafe(nil), fingerprint: T.unsafe(nil)); end
  def update_from_scope(scope); end
  def user; end

  protected

  def breadcrumbs=(_arg0); end
  def contexts=(_arg0); end
  def event_processors=(_arg0); end
  def extra=(_arg0); end
  def fingerprint=(_arg0); end
  def level=(_arg0); end
  def rack_env=(_arg0); end
  def span=(_arg0); end
  def tags=(_arg0); end
  def transaction_names=(_arg0); end
  def user=(_arg0); end

  private

  def check_argument_type!(argument, expected_type); end
  def set_default_value; end

  class << self
    def os_context; end
    def runtime_context; end
  end
end

Sentry::Scope::ATTRIBUTES = T.let(T.unsafe(nil), Array)

class Sentry::SingleExceptionInterface < ::Sentry::Interface
  def module; end
  def module=(_arg0); end
  def stacktrace; end
  def stacktrace=(_arg0); end
  def to_hash; end
  def type; end
  def type=(_arg0); end
  def value; end
  def value=(_arg0); end
end

class Sentry::Span
  def initialize(description: T.unsafe(nil), op: T.unsafe(nil), status: T.unsafe(nil), trace_id: T.unsafe(nil), parent_span_id: T.unsafe(nil), sampled: T.unsafe(nil), start_timestamp: T.unsafe(nil), timestamp: T.unsafe(nil)); end

  def data; end
  def description; end
  def finish; end
  def get_trace_context; end
  def op; end
  def parent_span_id; end
  def sampled; end
  def set_data(key, value); end
  def set_description(description); end
  def set_http_status(status_code); end
  def set_op(op); end
  def set_span_recorder; end
  def set_status(status); end
  def set_tag(key, value); end
  def set_timestamp(timestamp); end
  def span_id; end
  def span_recorder; end
  def span_recorder=(_arg0); end
  def start_child(**options); end
  def start_timestamp; end
  def status; end
  def tags; end
  def timestamp; end
  def to_hash; end
  def to_sentry_trace; end
  def trace_id; end
end

Sentry::Span::STATUS_MAP = T.let(T.unsafe(nil), Hash)

class Sentry::Span::SpanRecorder
  def initialize(max_length); end

  def add(span); end
  def max_length; end
  def spans; end
end

class Sentry::StacktraceInterface < ::Sentry::Interface
  def frames; end
  def frames=(_arg0); end
  def to_hash; end
end

class Sentry::StacktraceInterface::Frame < ::Sentry::Interface
  def initialize(project_root); end

  def abs_path; end
  def abs_path=(_arg0); end
  def context_line; end
  def context_line=(_arg0); end
  def filename; end
  def function; end
  def function=(_arg0); end
  def in_app; end
  def in_app=(_arg0); end
  def lineno; end
  def lineno=(_arg0); end
  def module; end
  def module=(_arg0); end
  def post_context; end
  def post_context=(_arg0); end
  def pre_context; end
  def pre_context=(_arg0); end
  def to_hash(*args); end
  def vars; end
  def vars=(_arg0); end

  private

  def longest_load_path; end
  def under_project_root?; end
end

Sentry::THREAD_LOCAL = T.let(T.unsafe(nil), Symbol)

class Sentry::Transaction < ::Sentry::Span
  def initialize(name: T.unsafe(nil), parent_sampled: T.unsafe(nil), **options); end

  def finish(hub: T.unsafe(nil)); end
  def name; end
  def parent_sampled; end
  def set_initial_sample_desicion(sampling_context = T.unsafe(nil)); end
  def to_hash; end

  private

  def generate_transaction_description; end

  class << self
    def from_sentry_trace(sentry_trace, **options); end
  end
end

Sentry::Transaction::MESSAGE_PREFIX = T.let(T.unsafe(nil), String)

Sentry::Transaction::SENTRY_TRACE_REGEXP = T.let(T.unsafe(nil), Regexp)

Sentry::Transaction::UNLABELD_NAME = T.let(T.unsafe(nil), String)

class Sentry::TransactionEvent < ::Sentry::Event
  def contexts; end
  def contexts=(_arg0); end
  def environment; end
  def environment=(_arg0); end
  def event_id; end
  def event_id=(_arg0); end
  def extra; end
  def extra=(_arg0); end
  def level; end
  def level=(_arg0); end
  def modules; end
  def modules=(_arg0); end
  def platform; end
  def platform=(_arg0); end
  def release; end
  def release=(_arg0); end
  def sdk; end
  def sdk=(_arg0); end
  def server_name; end
  def server_name=(_arg0); end
  def spans; end
  def spans=(_arg0); end
  def start_timestamp; end
  def start_timestamp=(time); end
  def tags; end
  def tags=(_arg0); end
  def timestamp; end
  def timestamp=(_arg0); end
  def to_hash; end
  def transaction; end
  def transaction=(_arg0); end
  def type; end
  def type=(_arg0); end
  def user; end
  def user=(_arg0); end
end

Sentry::TransactionEvent::ATTRIBUTES = T.let(T.unsafe(nil), Array)

class Sentry::Transport
  def initialize(configuration); end

  def configuration; end
  def configuration=(_arg0); end
  def encode(event_hash); end
  def generate_auth_header; end
  def send_data(data, options = T.unsafe(nil)); end
  def send_event(event); end
  def state; end
  def state=(_arg0); end

  private

  def failed_for_exception(e, event); end
  def failed_for_previous_failure(event); end
  def log_not_sending(event); end
  def prepare_encoded_event(event); end
end

Sentry::Transport::CONTENT_TYPE = T.let(T.unsafe(nil), String)

class Sentry::Transport::Configuration
  def initialize; end

  def faraday_builder; end
  def faraday_builder=(_arg0); end
  def http_adapter; end
  def http_adapter=(_arg0); end
  def open_timeout; end
  def open_timeout=(_arg0); end
  def proxy; end
  def proxy=(_arg0); end
  def ssl; end
  def ssl=(_arg0); end
  def ssl_ca_file; end
  def ssl_ca_file=(_arg0); end
  def ssl_verification; end
  def ssl_verification=(_arg0); end
  def timeout; end
  def timeout=(_arg0); end
  def transport_class; end
  def transport_class=(klass); end
end

Sentry::Transport::PROTOCOL_VERSION = T.let(T.unsafe(nil), String)

class Sentry::Transport::State
  def initialize; end

  def failed?; end
  def failure(retry_after = T.unsafe(nil)); end
  def reset; end
  def should_try?; end
  def success; end
end

Sentry::Transport::USER_AGENT = T.let(T.unsafe(nil), String)

module Sentry::Utils
end

module Sentry::Utils::ExceptionCauseChain
  class << self
    def exception_to_array(exception); end
  end
end

class Sentry::Utils::RealIp
  def initialize(remote_addr: T.unsafe(nil), client_ip: T.unsafe(nil), real_ip: T.unsafe(nil), forwarded_for: T.unsafe(nil)); end

  def calculate_ip; end
  def ip; end

  protected

  def filter_local_addresses(ips); end
  def ips_from(header); end
end

Sentry::Utils::RealIp::LOCAL_ADDRESSES = T.let(T.unsafe(nil), Array)

Sentry::VERSION = T.let(T.unsafe(nil), String)