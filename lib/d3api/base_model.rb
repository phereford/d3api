module D3api
  class BaseModel
    extend D3api::Request

    attr_accessor :value

    def initialize(value)
      @value = value
      parsed_values = JSON.parse(value)
      fields = parsed_values.keys.inject([]) do |result, element|
        result << element.to_sym
      end

      fields.each do |field|
        field = :heroClass if field == :class

        self.class.send(:define_method, field) do
          parsed_values[field.to_s]
        end
      end
    end
  end
end
