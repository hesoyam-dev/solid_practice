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

module DMTeam
  def prepare_release(version)
    "Release #{version}"
  end
end

module Deploy
  def prepare_deploy(version)
    "Deploying #{version}"
  end
end

module QA
  def finish_testing(version)
    "Finishing test #{version}"
  end
end

class ProjectA < DeveloperTeam
  include Deploy
  PROJECT_VERSION = '0.1.0'.freeze

  def workload
    prepare_deploy(PROJECT_VERSION)
  end
end

class ProjectB < ReleaseTeam
  include QA
  include DMTeam
  PROJECT_VERSION = '0.1.2'.freeze

  def workload
    finish_testing(PROJECT_VERSION)
    prepare_release(PROJECT_VERSION)
  end
end
