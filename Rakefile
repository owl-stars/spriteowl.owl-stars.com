desc "Initialize the workspace"
task :init do
  puts "\n## Installing bundles"
  system "bundle install"
  puts "\n## Installing bower packages"
  system "bower install"
end

desc "Build and start server"
task :server do
  system "bundle exec middleman server"
end

desc "Generate build from sources"
task :build do
  system "bundle exec middleman build -c"
end

desc "Build and start server"
task :default => [:server]
