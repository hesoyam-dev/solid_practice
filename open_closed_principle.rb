class Developer < ProjectTeam
  attr_accessor :programming_language

  def initialize(programming_language)
    @programming_language = programming_language
  end

  def develop
    sprint.times do
      puts "Writing code using #{@programming_language}"
    end
  end

  def write_unit_tests
    puts 'Writing test cases for my code! :)'
  end

  def write_integration_tests
    puts 'Writing integration tests for my code! :)'
  end

  def write_functional_tests
    puts 'Writing functional tests for my code! :)'
  end
end

# Good example

class Developer < ProjectTeam
  include TestBase
  attr_accessor :programming_language

  def initialize(programming_language)
    @programming_language = programming_language
  end

  def develop
    sprint.times do
      puts "Writing code using #{@programming_language}"
    end
  end
end

module TestBase
  def write_unit_tests
    # Implementation for unit tests writing
  end

  def write_integration_tests
    # Implementation for integration tests writing
  end

  def write_functional_tests
    # Implementation for functional tests writing
  end
end

ruby_developer = Developer.new('Ruby')
ruby_developer.develop
ruby_developer.write_unit_tests
