# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `omniauth` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module OmniAuth
  class << self
    def config; end
    def configure; end
    def logger; end
    def mock_auth_for(provider); end
    def strategies; end
  end
end

class OmniAuth::AuthHash < ::OmniAuth::KeyStore
  def regular_writer(key, value); end
  def valid?; end

  class << self
    def subkey_class; end
  end
end

class OmniAuth::AuthHash::InfoHash < ::OmniAuth::KeyStore
  def name; end
  def name?; end
  def to_hash; end
  def valid?; end

  class << self
    def subkey_class; end
  end
end

class OmniAuth::Builder < ::Rack::Builder
  def before_callback_phase(&block); end
  def before_options_phase(&block); end
  def before_request_phase(&block); end
  def call(env); end
  def configure(&block); end
  def on_failure(&block); end
  def options(options = T.unsafe(nil)); end
  def provider(klass, *args, &block); end
end

class OmniAuth::Configuration
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def initialize; end

  def add_camelization(name, camelized); end
  def add_mock(provider, original = T.unsafe(nil)); end
  def allowed_request_methods; end
  def allowed_request_methods=(_arg0); end
  def before_callback_phase(&block); end
  def before_callback_phase=(_arg0); end
  def before_options_phase(&block); end
  def before_options_phase=(_arg0); end
  def before_request_phase(&block); end
  def before_request_phase=(_arg0); end
  def camelizations; end
  def camelizations=(_arg0); end
  def failure_raise_out_environments; end
  def failure_raise_out_environments=(_arg0); end
  def form_css; end
  def form_css=(_arg0); end
  def full_host; end
  def full_host=(_arg0); end
  def logger; end
  def logger=(_arg0); end
  def mock_auth; end
  def mock_auth=(_arg0); end
  def on_failure(&block); end
  def on_failure=(_arg0); end
  def path_prefix; end
  def path_prefix=(_arg0); end
  def test_mode; end
  def test_mode=(_arg0); end

  class << self
    def default_logger; end
    def defaults; end
  end
end

class OmniAuth::Error < ::StandardError
end

class OmniAuth::FailureEndpoint
  def initialize(env); end

  def call; end
  def env; end
  def origin_query_param; end
  def raise_out!; end
  def redirect_to_failure; end
  def strategy_name_query_param; end

  class << self
    def call(env); end
  end
end

class OmniAuth::Form
  def initialize(options = T.unsafe(nil)); end

  def button(text); end
  def fieldset(legend, options = T.unsafe(nil), &block); end
  def footer; end
  def header(title, header_info); end
  def html(html); end
  def input_field(type, name); end
  def label_field(text, target); end
  def options; end
  def options=(_arg0); end
  def password_field(label, name); end
  def text_field(label, name); end
  def to_html; end
  def to_response; end

  protected

  def css; end

  class << self
    def build(options = T.unsafe(nil), &block); end
  end
end

OmniAuth::Form::DEFAULT_CSS = T.let(T.unsafe(nil), String)

class OmniAuth::KeyStore < ::Hashie::Mash
  class << self
    def override_logging; end
  end
end

class OmniAuth::NoSessionError < ::StandardError
end

module OmniAuth::Strategies
end

class OmniAuth::Strategies::Developer
  include(::OmniAuth::Strategy)
  extend(::OmniAuth::Strategy::ClassMethods)

  def request_phase; end
end

module OmniAuth::Strategy
  mixes_in_class_methods(::OmniAuth::Strategy::ClassMethods)

  def initialize(app, *args, &block); end

  def app; end
  def auth_hash; end
  def call(env); end
  def call!(env); end
  def call_app!(env = T.unsafe(nil)); end
  def callback_call; end
  def callback_path; end
  def callback_phase; end
  def callback_url; end
  def credentials; end
  def current_path; end
  def custom_path(kind); end
  def dup; end
  def env; end
  def extra; end
  def fail!(message_key, exception = T.unsafe(nil)); end
  def full_host; end
  def info; end
  def inspect; end
  def log(level, message); end
  def mock_call!(*_arg0); end
  def mock_callback_call; end
  def mock_request_call; end
  def name; end
  def on_auth_path?; end
  def on_callback_path?; end
  def on_path?(path); end
  def on_request_path?; end
  def options; end
  def options_call; end
  def options_request?; end
  def path_prefix; end
  def query_string; end
  def redirect(uri); end
  def request; end
  def request_call; end
  def request_path; end
  def request_phase; end
  def response; end
  def script_name; end
  def session; end
  def setup_path; end
  def setup_phase; end
  def skip_info?; end
  def uid; end
  def user_info; end

  protected

  def merge_stack(stack); end
  def ssl?; end

  class << self
    def included(base); end
  end
end

OmniAuth::Strategy::CURRENT_PATH_REGEX = T.let(T.unsafe(nil), Regexp)

module OmniAuth::Strategy::ClassMethods
  def args(args = T.unsafe(nil)); end
  def compile_stack(ancestors, method, context); end
  def configure(options = T.unsafe(nil)); end
  def credentials(&block); end
  def credentials_stack(context); end
  def default_options; end
  def extra(&block); end
  def extra_stack(context); end
  def info(&block); end
  def info_stack(context); end
  def option(name, value = T.unsafe(nil)); end
  def uid(&block); end
  def uid_stack(context); end

  private

  def credentials_proc; end
  def extra_proc; end
  def info_proc; end
  def uid_proc; end
end

OmniAuth::Strategy::EMPTY_STRING = T.let(T.unsafe(nil), String)

class OmniAuth::Strategy::Options < ::OmniAuth::KeyStore
end

module OmniAuth::Test
end

class OmniAuth::Test::PhonySession
  def initialize(app); end

  def call(env); end
end

module OmniAuth::Test::StrategyMacros
  def sets_an_auth_hash; end
  def sets_provider_to(provider); end
  def sets_uid_to(uid); end
  def sets_user_info_to(user_info); end
end

module OmniAuth::Test::StrategyTestCase
  def app; end
  def app_response; end
  def session; end
  def strategy; end
end

module OmniAuth::Utils

  private

  def camelize(word, first_letter_in_uppercase = T.unsafe(nil)); end
  def deep_merge(hash, other_hash); end
  def form_css; end

  class << self
    def camelize(word, first_letter_in_uppercase = T.unsafe(nil)); end
    def deep_merge(hash, other_hash); end
    def form_css; end
  end
end
