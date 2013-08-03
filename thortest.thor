class Publish < Thor
  include Thor::Actions

  desc "example", "an example task"
  def example
    puts "I'm a thor task!"
  end

end

