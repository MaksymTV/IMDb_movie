# Файл dbconsole для запуску консолі бази даних
cat << EOF > bin/dbconsole
#!/usr/bin/env ruby

require 'bundler/setup'
require 'rails/commands'

Rails::Commands.invoke("dbconsole", ARGV)
EOF