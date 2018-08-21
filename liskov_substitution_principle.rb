class Developer
  def code
    # Knows basic principles of OOP, etc.
  end
end

class WebDev < Developer
  def code
    'Javascript'
  end
end

class DataBaseDev < Developer
  def code
    'SQL'
  end
end

def developer_info(dev)
  "This is #{dev.class.name} and he is using #{dev.code.upcase}"
end

developer_info(WebDev.new)
developer_info(DataBaseDev.new)

# Bad example //

class Developer
  def code
    # Knows basic principles of OOP, etc.
  end
end

class WebDev < Developer
  def code
    %w[Javascript React Angular]
  end
end

class DataBaseDev < Developer
  def code
    'SQL'
  end
end

def developer_info(dev)
  "This is #{dev.class.name} and he is using #{dev.code.upcase}"
end

developer_info(WebDev.new)
developer_info(DataBaseDev.new)
