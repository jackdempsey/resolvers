module Resolvers
  autoload :MobileFallbackResolver, 'resolvers/mobile_fallback_resolver'

  ActiveSupport.on_load(:action_controller) do
    append_view_path(MobileFallbackResolver.new('app/views'))
  end
end
