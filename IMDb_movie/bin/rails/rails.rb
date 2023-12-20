# Файл rails для запуску веб-сайту
cat << EOF > bin/rails
#!/usr/bin/env ruby

require 'bundler/setup'
require 'rails/commands'

Rails::Commands.invoke("server", ARGV)
EOF
