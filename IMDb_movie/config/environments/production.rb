# production.rb

# Налаштовуємо порт сервера HTTP
config.server_port = 3002

# Налаштовуємо налаштування бази даних для середовища виробництва
config.active_record.database_name = "my_movies_production_database"
config.active_record.database_username = "my_movies_production_user"
config.active_record.database_password = "my_movies_production_password"

# Налаштовуємо інші сервіси
# ...
