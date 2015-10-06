require 'shell'

namespace :gem
  task :build do
    each_child do
      execute_and_stream('rake build')
    end
  end

  task :push, [:key, :version] do |_, args|
    each_child do |child|
      execute_and_stream("gem push pkg/#{child}-#{args[:version]}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
    end
  end
end
