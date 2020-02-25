require 'active_support/all'
PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  autoload File.basename(file, ".rb").camelize, file
end

RSpec.configure do |config|
end
