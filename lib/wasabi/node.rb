module Wasabi
  class Node

    def initialize(namespace, local, attrs = {})
      @namespace = namespace
      @local = local
      @attrs = attrs
    end

    attr_reader :namespace, :local, :attrs

    def [](key)
      @attrs[key]
    end

    def to_s
      @string ||= "#{Wasabi::NAMESPACES_BY_URI[namespace]}:#{local}"
    end

    def inspect
      @inspect ||= "{#{namespace}}:#{local}"
    end

  end
end
