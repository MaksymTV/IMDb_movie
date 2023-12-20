def random_number
    Random.new.rand(100)
  end
  
  def format_date(date)
    date.strftime("%d.%m.%Y")
  end
  