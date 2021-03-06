module ActiveSupport::JSON::Encoding
  class Oj < JSONGemEncoder
    def encode(value)
      ::Oj.dump(value.as_json, mode: :compat)
    end
  end
end

ActiveSupport.json_encoder = ActiveSupport::JSON::Encoding::Oj
