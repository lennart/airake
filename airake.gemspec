# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{airake}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabriel Handford", "Min Kim", "lennart"]
  s.date = %q{2010-01-04}
  s.description = %q{Tasks and generators for Adobe AIR apps}
  s.email = %q{l.melzer@tu-bs.de}
  s.executables = ["airake", "flexrake"]
  s.files = [
    "Rakefile",
     "VERSION",
     "air_generators/class/USAGE",
     "air_generators/class/class_generator.rb",
     "air_generators/class/templates/Class.as",
     "app_generators/airake/USAGE",
     "app_generators/airake/airake_generator.rb",
     "app_generators/airake/templates/README",
     "app_generators/flexrake/USAGE",
     "app_generators/flexrake/flexrake_generator.rb",
     "app_generators/flexrake/templates/Rakefile",
     "app_generators/shared/Rakefile",
     "app_generators/shared/airake.yml",
     "app_generators/shared/application.mxml",
     "app_generators/shared/descriptor_1.xml",
     "app_generators/shared/descriptor_M5.xml",
     "app_generators/shared/descriptor_M6.xml",
     "app_generators/shared/flexrake.yml",
     "app_generators/shared/icons/Web.png",
     "app_generators/shared/lib/corelib-08.30.2007.swc",
     "app_generators/shared/lib/flexunit-08.30.2007.swc",
     "app_generators/shared/test/Test-app.xml",
     "app_generators/shared/test/Test.mxml",
     "app_generators/shared/test/suite/AllTests.as",
     "bin/airake",
     "bin/flexrake",
     "config/hoe.rb",
     "config/requirements.rb",
     "html/app_generators.html",
     "html/component_generators.html",
     "html/copy_to_rubyforge.sh",
     "html/index.html",
     "html/resources.html",
     "html/screen.css",
     "html/tasks.html",
     "lib/airake.rb",
     "lib/airake/commands/acompc.rb",
     "lib/airake/commands/adl.rb",
     "lib/airake/commands/adt.rb",
     "lib/airake/commands/asdoc.rb",
     "lib/airake/commands/base.rb",
     "lib/airake/commands/fcsh.rb",
     "lib/airake/commands/flash_player.rb",
     "lib/airake/commands/mxmlc.rb",
     "lib/airake/core_ext/blank.rb",
     "lib/airake/daemonize.rb",
     "lib/airake/fcsh.rb",
     "lib/airake/fcshd.rb",
     "lib/airake/flexPartyPlayer.rb",
     "lib/airake/project.rb",
     "lib/airake/projects/air.rb",
     "lib/airake/projects/flash.rb",
     "lib/airake/projects/flex.rb",
     "lib/airake/runner.rb",
     "lib/airake/tasks.rb",
     "lib/airake/tasks/air.rake",
     "lib/airake/tasks/fcsh.rake",
     "lib/airake/tasks/flash.rake",
     "lib/airake/tasks/flex.rake",
     "lib/airake/version.rb",
     "script/destroy",
     "script/generate",
     "tasks/deployment.rake",
     "tasks/environment.rake",
     "tasks/website.rake",
     "test/Test App/README",
     "test/Test App/Rakefile",
     "test/Test App/airake.yml",
     "test/Test App/cert.pfx",
     "test/Test App/lib/corelib-08.30.2007.swc",
     "test/Test App/lib/flexunit-08.30.2007.swc",
     "test/Test App/script/destroy",
     "test/Test App/script/generate",
     "test/Test App/src/TestApp-app.xml",
     "test/Test App/src/TestApp.mxml",
     "test/Test App/src/assets/app_icons/icon_128.png",
     "test/Test App/src/com/test/Test.as",
     "test/Test App/test/Test-app.xml",
     "test/Test App/test/Test.mxml",
     "test/Test App/test/suite/AllTests.as",
     "test/test_airake.rb",
     "test/test_airake_generator.rb",
     "test/test_class_generator.rb",
     "test/test_flexrake_generator.rb",
     "test/test_generator_helper.rb",
     "test/test_helper.rb",
     "test/test_runner.rb"
  ]
  s.homepage = %q{http://github.com/lennart/airake}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Tasks and generators for Adobe Air apps}
  s.test_files = [
    "spec/airake_spec.rb",
     "spec/spec_helper.rb",
     "test/test_airake.rb",
     "test/test_airake_generator.rb",
     "test/test_class_generator.rb",
     "test/test_flexrake_generator.rb",
     "test/test_generator_helper.rb",
     "test/test_helper.rb",
     "test/test_runner.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<rubigen>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rubigen>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rubigen>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
