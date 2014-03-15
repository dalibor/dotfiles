require 'rubygems' unless defined? Gem

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:AUTO_INDENT]  = true

# ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

def y(obj)
  puts obj.to_yaml
end

def e
  exit
end

class Object
  def gvim(method_name)
    file, line = method(method_name).source_location
    `gvim +#{line} #{file}`
  end
end

# # Bundler jailbreak
# # https://github.com/ConradIrwin/pry-debundle/blob/master/lib/pry-debundle.rb
# if defined? Bundler
#   Gem.post_reset_hooks.reject! {|hook| hook.source_location.first =~ %r{/bundler/} }
#   Gem::Specification.reset
#   load 'rubygems/custom_require.rb'
# end

begin
  require 'interactive_editor'
rescue LoadError => err
  warn "Couldn't load interactive_editor: #{err}"
end

# if defined? Rails
#   begin
#     require 'hirb'
#     Hirb.enable
#   rescue LoadError => err
#     warn "Couldn't load Sketches: #{err}"
#   end
# end

# begin
#   require "ap"
#   IRB::Irb.class_eval do
#     def output_value
#       ap @context.last_value
#     end
#   end
# rescue LoadError => err
#   warn "Couldn't load awesome print: #{err}"
# end

# begin
#   require 'wirb'
#   Wirb.start
# rescue LoadError => err
#   warn "Couldn't load Wirb: #{err}"
# end

# begin
#   require 'wirble'
#   Wirble.init
#   Wirble.colorize
# rescue LoadError => err
#   warn "Couldn't load Wirble: #{err}"
# end

# begin
#   require 'looksee'
# rescue LoadError => err
#   warn "Couldn't load Looksee: #{err}"
# end

# begin
#   require 'sketches'
#   Sketches.config :editor => 'gvim'
# rescue LoadError => err
#   warn "Couldn't load Sketches: #{err}"
# end
