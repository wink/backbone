module Notifier
  module Kdialog
    extend self

    def supported?
      RUBY_PLATFORM =~ /(linux|freebsd)/ && `which kdialog > /dev/null` && $? == 0
    end

    def notify(options)
      command = %W[
        kdialog
        --title='#{options[:title]}'
        --passivepopup='#{options[:message]}' 5
      ].join(" ")

      Thread.new { `#{command}` }
    end
  end
end
