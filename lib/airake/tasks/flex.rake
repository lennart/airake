root_path = File.expand_path(File.join File.dirname(__FILE__), "..", "..")
src_path = "src"
libs_src_path = File.expand_path(File.join(root_path, *%w{libs ** src}))
libs_src_paths = Rake::FileList.new(libs_src_path).map do |p| 
  p =~ /\A#{root_path}(.*)$/
    $1
end
libs = File.join(%w{libs extLib})
public_path = ENV["JUKEBOX_PUBLIC_PATH"] || "public"

namespace :flex do

  desc "Compile"
  task :compile => :clean do
    begin
      project = Airake::Projects::Flex.new 
      #ENV["RACK_ENV"] || "development", root_path, :swf_path => "public/jukebox/FlexPlayer.swf" ,:mxml_path => %w{src FlexPlayer.mxml}.join("/"), :src_dirs => libs_src_paths.to_a, :lib_dir => libs, :debug => ENV["DEBUG"] ? true : false
      fcsh = PatternPark::FCSH.new_from_rake(ENV)
      fcsh.execute([ project.base_dir, project.fmxmlc.compile ])      
    rescue PatternPark::FCSHConnectError => e
      puts "Cannot connect to FCSHD (start by running: rake fcsh:start); Continuing compilation..."
      Airake::Runner.run(project.fmxmlc, :compile)
    end
  end

  desc "Clean"
  task :clean do 
    project = Airake::Projects::Flex.new
    project.clean
  end

end

