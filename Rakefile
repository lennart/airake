require 'config/requirements'
#require 'config/hoe' # setup Hoe + all gem configuration

Dir['tasks/**/*.rake'].each { |rake| load rake }

# Load airake (why not?)
require 'airake'
RDOC_OPTS = ['--quiet', '--title', 'airake documentation',
    "--opname", "index.html",
    "--line-numbers", 
    "--main", "README",
    "--inline-source"]

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "airake"
    gem.summary = %Q{Tasks and generators for Adobe Air apps}
    gem.description = "Tasks and generators for Adobe AIR apps"
    gem.email = "l.melzer@tu-bs.de"
    gem.homepage = "http://github.com/lennart/airake"
    gem.authors = ["Gabriel Handford", "Min Kim","lennart" ]
    gem.executables = ["airake", "flexrake"]

    gem.add_development_dependency "rspec"

    gem.add_dependency "rubigen"
    gem.add_dependency "activesupport"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
task :test_runner do

  runner = Airake::Runner.new("rake --tasks")
  runner.run

end
require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "airake #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
