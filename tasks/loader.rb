module TaskLoader

  def safe_load(file)
    begin
      load file
    rescue LoadError => ex
      puts "Error loading rake tasks from '#{file}' but will continue..."
      puts ex.message
    end
  end

  def load_tasks
    Dir.glob(File.join(File.dirname(__FILE__), './*.rake')).each do |rakefile|
      safe_load rakefile
    end
  end
end
