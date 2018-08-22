# Bad example

class ProjectA
  PROJECT_VERSION = '0.1.0'.freeze

  def release
    @project_team.prepare_release(PROJECT_VERSION)
  end
end

class ProjectB
  PROJECT_VERSION = '0.1.2'.freeze

  def release
    @project_team.prepare_release(PROJECT_VERSION)
  end
end

# Good example

class DeliveryManager
  def prepare_release(version)
    "Release #{version}"
  end
end

class ProjectA
  PROJECT_VERSION = '0.1.0'.freeze

  def release
    @dm.prepare_release(PROJECT_VERSION)
  end
end

class ProjectB
  PROJECT_VERSION = '0.1.2'.freeze

  def release
    @dm.prepare_release(PROJECT_VERSION)
  end
end
