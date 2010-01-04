class FlexrakeGenerator < RubiGen::Base

  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])

  default_options :author => nil

  attr_reader :name, :app_name, :title, :description, :show_buttons, :url

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @destination_root = File.expand_path(args.shift)
    @name = base_name
    @app_name = @name.gsub(/\s+/, "").camelize
    @title = @name
    @url = "http://airake.rubyforge.org/resources.html"
    @description = "Put description here"
    @show_buttons = true
    extract_options
    
    @source_root = File.join(File.dirname(__FILE__), "..", "shared")
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory ''
      BASEDIRS.each { |path| m.directory path }

      # Create stubs
      # m.template "template.rb",  "some_file_after_erb.rb"
      # m.template_copy_each ["template.rb", "template2.rb"]
      # m.file     "file",         "some_file_copied"
      # m.file_copy_each ["path/to/file", "path/to/file2"]
      m.file "../airake/templates/README", "README"

      # Lib
      m.file "lib/flexunit-08.30.2007.swc", "lib/flexunit-08.30.2007.swc"
      m.file "lib/corelib-08.30.2007.swc", "lib/corelib-08.30.2007.swc"

      # Test
      m.file "test/Test.mxml", "test/Test.mxml"
      m.directory "test/suite"
      m.file "test/suite/AllTests.as", "test/suite/AllTests.as"      

      m.template "../flexrake/templates/Rakefile", "Rakefile"
      m.template "../flexrake/templates/application.mxml", "src/#{app_name}.mxml"
      m.template "flexrake.yml", "flexrake.yml"

      # Icons
      m.directory "src/assets/app_icons"
      m.file "icons/Web.png", "src/assets/app_icons/icon_128.png"

      m.dependency "install_rubigen_scripts", [destination_root, 'flexrake'],
        :shebang => options[:shebang], :collision => :force
    end
  end

  protected
  def banner
    <<-EOS
    Creates a Flex Project scaffold

    USAGE: #{spec.name} name
      EOS
  end

  def add_options!(opts)
    opts.separator ''
    opts.separator 'Options:'
    # For each option below, place the default
    # at the top of the file next to "default_options"
    # opts.on("-a", "--author=\"Your Name\"", String,
    #         "Some comment about this option",
    #         "Default: none") { |o| options[:author] = o }
    opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
  end

  def extract_options
    # for each option, extract it into a local variable (and create an "attr_reader :author" at the top)
    # Templates can access these value via the attr_reader-generated methods, but not the
    # raw instance variable value.
    # @author = options[:author]
  end

  # Installation skeleton.  Intermediate directories are automatically
  # created so don't sweat their absence here.
  BASEDIRS = %w(
      lib
      log
      script
      test
      tmp
      src
  )
end
