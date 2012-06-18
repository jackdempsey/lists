require "lists/engine"
require 'active_support/dependencies'
require 'haml'
require 'acts_as_list'

module Lists
  mattr_accessor :access_callback
  @@access_callback = -> { respond_to?(:current_admin_user) ? current_admin_user : false }

  def self.setup
    yield self
  end
end
