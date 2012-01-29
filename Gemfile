source 'http://rubygems.org'

gem 'rails', '3.1.1'

gem 'jquery-rails'


gem 'mongrel', '1.2.0.pre2'
## Pasandonos a thin (recomendado por heroku)
#gem 'thin'

gem 'rake'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

group :development, :test do
  # BD para desarrollo
  gem 'sqlite3'
  # Pretty printed test output
  gem 'turn', :require => false
  # To use debugger
  # gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'ruby-debug19', :require => 'ruby-debug',:platform => :ruby_19
  gem 'ruby-debug-base19', :platform => :ruby_19
  gem 'ruby-debug-ide19', :platform => :ruby_19
end

group :production do
  gem 'pg'
end
#######
#
# SPREE
#
#######
gem 'spree', '0.70.1'
#-----
# Traducciones
#-----
gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git'
#-----
# Cambio en el despliegue de variantes. Manejo de opciones por botones
#-----
gem "spree_variant_options", "~> 0.3.0"
#----
# Vuelta a la interfaz azul de 0.6
#----
gem 'spree_blue_theme', :git => 'git://github.com/spree/spree_blue_theme.git', :branch => '0-70-stable'