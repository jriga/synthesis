GEMSPEC =Gem::Specification.new do |s|
  s.name = 'synthesis'
  s.version = '0.1.6'
  s.platform = Gem::Platform::RUBY
  s.rubyforge_project = "synthesis"
  s.summary, s.description = 'A tool for Synthesized Testing'
  s.authors = 'Stuart Caborn, George Malamidis'
  s.email = 'george@nutrun.com'
  s.homepage = 'http://synthesis.rubyforge.org'
  s.has_rdoc = true
  s.rdoc_options += ['--quiet', '--title', 'Synthesis', '--main', 'README', '--inline-source']
  s.extra_rdoc_files = ['README', 'COPYING']
  s.files = [
    "COPYING",
    "Rakefile",
    "README",
    "synthesis.gemspec",
    "lib/synthesis/adapter/expectations.rb",
    "lib/synthesis/adapter/mocha.rb",
    "lib/synthesis/adapter/rspec.rb",
    "lib/synthesis/adapter.rb",
    "lib/synthesis/class.rb",
    "lib/synthesis/expectation.rb",
    "lib/synthesis/expectation_interceptor.rb",
    "lib/synthesis/expectation_matcher.rb",
    "lib/synthesis/expectation_record.rb",
    "lib/synthesis/expectation_record_enabled.rb",
    "lib/synthesis/logging.rb",
    "lib/synthesis/method_invocation_watcher.rb",
    "lib/synthesis/module.rb",
    "lib/synthesis/object.rb",
    "lib/synthesis/recordable.rb",
    "lib/synthesis/reporter.rb",
    "lib/synthesis/runner.rb",
    "lib/synthesis/task.rb",
    "lib/synthesis/util/mock_instance/mocha.rb",
    "lib/synthesis/util/mock_instance/rspec.rb",
    "lib/synthesis/util/mock_instance.rb",
    "lib/synthesis.rb"
  ]
end