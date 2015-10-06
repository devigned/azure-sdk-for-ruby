
module Shell
  def execute_and_stream(cmd)
    Open3.popen2e(cmd) do |_, stdout_err, wait_thr|
      while line = stdout_err.gets
        puts line
      end

      exit_status = wait_thr.value
      unless exit_status.success?
        abort "FAILED !!! #{cmd}"
      end
    end
  end

  def each_child
    dirs = Dir.entries('./').select { |f| File.directory?(f) and !(f =='.' || f == '..') }
    dirs.each do |dir|
      Dir.chdir(dir) do
        yield(dir)
      end
    end
  end
end
