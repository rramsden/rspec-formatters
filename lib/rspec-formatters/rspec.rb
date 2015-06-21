class RSpec::Core::Formatters::Loader
  alias_method :built_in_formatter_aliased, :built_in_formatter

  def built_in_formatter(key)
    begin
      Kernel.const_get "RSpec::Formatters::#{key}"
    rescue NameError
      built_in_formatter_aliased(key)
    end
  end
end
