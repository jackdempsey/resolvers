module Resolvers
  autoload :MobileFallbackResolver, 'resolvers/mobile_fallback_resolver'

  ActiveSupport.on_load(:action_controller) do
    append_view_path(MobileFallbackResolver.new('app/views'))
  end

  # class Railtie < ::Rails::Railtie
  #   initializer 'resolvers.mobile_fallback_resolver' do |app|
  #     ActiveSupport.on_load(:action_controller) do
  #       append_view_path(MobileFallbackResolver.new('app/views'))
  #     end
  #   end
  # end
end
