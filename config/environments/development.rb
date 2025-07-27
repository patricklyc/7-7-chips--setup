Rottenpotatoes::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Github Codespace specific tweaks
  # Credit to: https://dev.to/hamajyotan/how-to-run-a-rails-application-on-github-codespaces-48k0
  if ENV["CODESPACES"]
    codespaces_port_forwarding_domain = ENV["GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN"]
    codespace_name = ENV["CODESPACE_NAME"]
    host = "#{codespace_name}-3000.#{codespaces_port_forwarding_domain}"

    config.hosts << host

    # warn "Disabling the CSRF protection Origin header check in GitHub Codespaces"
    # config.action_controller.forgery_protection_origin_check = false
  end

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  # config.whiny_nils = true
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  # config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  # config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end
