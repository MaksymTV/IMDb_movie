class AuthenticationService
    def authenticate(email, password)
      # Перевіряємо, чи існує користувач з таким email
      user = User.find_by(email: email)
  
      # Якщо користувач існує, перевіряємо, чи правильний пароль
      return user if user&.authenticate(password)
  
      # Якщо пароль неправильний, повертаємо nil
      return nil
    end
  end
  