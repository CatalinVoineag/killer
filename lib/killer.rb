require "thor"
require "rubygems"

class Killer < Thor
  def self.exit_on_failure?
    true
  end

  desc "kill PROCESS NAME", "Kills any process"
  def kill(process_name)
    system("ps aux | grep #{process_name} | awk {'print $2'} | xargs kill")
  end
end
