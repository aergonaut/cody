# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `multi_xml` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module MultiXml
  class << self
    def default_parser; end
    def parse(xml, options = T.unsafe(nil)); end
    def parser; end
    def parser=(new_parser); end

    private

    def parse_binary(binary, entity); end
    def parse_file(file, entity); end
    def symbolize_keys(params); end
    def typecast_xml_value(value, disallowed_types = T.unsafe(nil)); end
    def undasherize_keys(params); end
  end
end

MultiXml::CONTENT_ROOT = T.let(T.unsafe(nil), String)

MultiXml::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

MultiXml::DISALLOWED_XML_TYPES = T.let(T.unsafe(nil), Array)

class MultiXml::DisallowedTypeError < ::StandardError
  def initialize(type); end
end

class MultiXml::NoParserError < ::StandardError
end

MultiXml::PARSING = T.let(T.unsafe(nil), Hash)

class MultiXml::ParseError < ::StandardError
end

MultiXml::REQUIREMENT_MAP = T.let(T.unsafe(nil), Array)

MultiXml::TYPE_NAMES = T.let(T.unsafe(nil), Hash)
