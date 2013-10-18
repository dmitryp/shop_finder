require 'active_support'

module ShopFinder
  class Logger < ActiveSupport::BufferedLogger
    SEVERITY_NAME = %w( DEBUG INFO WARN ERROR FATAL UNKNOWN )

    def custom_line(severity, message)
      # Customized Log Format!
      # message = [ "[ " + Time.now.strftime("%Y-%m-%d %H:%M:%S") + "]", $$, SEVERITY_NAME[severity], "" message].join("\t")
      #message = "[%5s %s] %s\n" % [SEVERITY_NAME[severity], Time.now.strftime("%Y/%m/%d %H:%M:%S"),  message]
      message = "%s\n" % [message]
    end

    def add(severity, message = nil, progname = nil, &block)
      return if self.level > severity
      message = (message || (block && block.call) || progname).to_s
      # If a newline is necessary then create a new message ending with a newline.
      # Ensures that the original message is not mutated.
      message = "#{message}" unless message[-1] == ?\n
      message = custom_line(severity, message) # <== CUSTOMIZED
      @log.add(severity, message, progname, &block)
      message
    end
  end
end
