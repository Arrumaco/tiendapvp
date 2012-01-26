# Be sure to restart your server when you modify this file.

TiendaPVP::Application.config.session_store :cookie_store, key: '_tiendaPVP_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# TiendaPVP::Application.config.session_store :active_record_store


# Lenguaje Español- venezuela
Spree::Config.set(:default_locale => 'es-VE')
# Evita que haya compras de usuarios no registrados
Spree::Config.set(:allow_guest_checkout => false)
#
#Spree::Config.set(:cache_static_content => false)
# Venezuela como país por omisión
Spree::Config.set(:default_country_id => 1)
#Spree::Config.set(:default_country_id => 218)
# replace with the name of a zone if you would like to limit the countries
# Spree::Config.set(:checkout_zone => nil)
Spree::Config.set(:checkout_zone => "Venezuela")
Spree::Config.set(:logo => 'admin/LogoPVP3.png')
Spree::Config.set(:admin_interface_logo => 'admin/LogoPVP3.png')
Spree::Config.set(:stylesheets => 'screen,spree_blue_theme')
Spree::Config.set(:allow_ssl_in_production => false)