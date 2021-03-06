# frozen_string_literal: true
module Valkyrie
  class MetadataAdapter
    class_attribute :adapters
    self.adapters = {}
    class << self
      # Register an adapter by a short name.
      # @param adapter [#persister,#query_service] Adapter to register.
      # @param short_name [Symbol] Name to register it under.
      def register(adapter, short_name)
        adapters[short_name.to_sym] = adapter
      end

      # Find an adapter by its short name.
      # @param short_name [Symbol]
      # @return [#persister,#query_service]
      def find(short_name)
        symbolized_key = short_name.to_sym
        return adapters[symbolized_key] if adapters.key?(symbolized_key)
        raise "Unable to find unregistered adapter `#{short_name}'"
      end
    end
  end
end
