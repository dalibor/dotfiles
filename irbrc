require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:AUTO_INDENT]  = true
IRB.conf[:BACK_TRACE_LIMIT] = 100
IRB.conf[:USE_AUTOCOMPLETE] = false
IRB.conf[:LOAD_MODULES] = []

# ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

def e
  exit
end

class Object
  def gvim(method_name)
    file, line = method(method_name).source_location
    `gvim +#{line} #{file}`
  end
end

begin
  require 'interactive_editor'
rescue LoadError => err
  warn "Couldn't load interactive_editor: #{err}"
end
