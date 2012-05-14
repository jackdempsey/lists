module RspecMountableEngine
  class Engine < ::Rails::Engine
    isolate_namespace RspecMountableEngine

    # taken from http://whilefalse.net/2012/01/25/testing-rails-engines-rspec/
    # RSpec's default Rails test generators simply don't work with engines (they don't namespace stuff correctly
    # and they don't know how to handle engine route helpers).
    # You may want to enable them purely for the creation of the correct files,
    # which you can modify after generation to work correctly.
    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
    end
  end
end
