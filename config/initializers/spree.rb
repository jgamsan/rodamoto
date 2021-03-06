# Configure Spree Preferences
# 
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do: 
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "RodaMoto - Tu Tienda Online de Neumaticos de Moto"
  config.allow_ssl_in_production = false
  config.default_country_id = 188
  config.default_locale = "es"
  config.logo = "logo-rodamoto.png"
  config.prices_inc_tax = true
end
