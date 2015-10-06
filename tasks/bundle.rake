require 'shell'

namespace :bundle do
  task :update_children do
    each_child do
      execute_and_stream('bundle update')
    end
  end
end
