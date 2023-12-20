# Файл console для запуску консолі Ruby
cat << EOF > bin/console
#!/usr/bin/env ruby

require 'bundler/setup'
require 'irb'
require 'rails/console'

IRB.start
EOF