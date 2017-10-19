# frozen_string_literal: true
module Valkyrie::Persistence::Fedora
  class PermissiveSchema
    attr_reader :schema
    def initialize(schema = {})
      @schema = schema
    end

    def predicate_for(resource:, property:)
      schema.fetch(property, ::RDF::URI("http://example.com/predicate/#{property}"))
    end

    def property_for(resource:, predicate:)
      (schema.find { |_k, v| v == RDF::URI(predicate.to_s) } || []).first || predicate.to_s.gsub("http://example.com/predicate/", "")
    end
  end
end
