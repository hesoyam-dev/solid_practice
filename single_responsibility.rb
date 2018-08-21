# Incorrect example

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

  def test
    project.each do |functionallity|
      puts "Testing project functionallity - #{functionallity}"
    end
  end
end

# Should look like this

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
    puts "Writing test cases for my code! :)"
  end
end

class Tester < ProjectTeam
  attr_accessor :soft_skills

  def initialize(soft_skills)
    @soft_skills = soft_skills
  end

  def test
    project.each do |functionallity|
      puts "Testing project functionallity - #{functionallity} using #{@soft_skills}"
    end
  end
end
