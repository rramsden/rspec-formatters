require 'rspec/core/formatters/base_formatter'

module RSpec
  module Formatters
    class VimQuickfix < RSpec::Core::Formatters::BaseFormatter
      RSpec::Core::Formatters.register self, :example_failed

      def example_failed notification
        exception = notification.exception
        message = format_message exception.message
        example = notification.example
        location    = example.location
        output.puts "#{location}: #{example.example_group.description.strip} " +
          "#{example.description.strip}: #{message.strip}" if location
      end

    private

      def format_message msg
        msg.gsub("\n", ' ')[0,80]
      end
    end
  end
end
