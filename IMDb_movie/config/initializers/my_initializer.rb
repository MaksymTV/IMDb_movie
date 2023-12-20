# initializers/my_initializer.rb

# Реєструємо новий сервіс
Rails.application.config.services.register(:my_service, MyService)
