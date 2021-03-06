class DataBrander
  BRAND = "METAL"
  
  def initialize(storage = '')
    @storage = storage
  end
  
  def save_branded(data)
    @storage.save "#{BRAND} - #{data}"
  end
  
  def dont_do_this
    @storage.ouch!
  end
  
  def ok
    @storage.ok_or_problem(:ok)
  end
  
  def not_ok
    @storage.ok_or_problem(:not_ok)
  end
  
  def open_file
    open(File.dirname(__FILE__) + '/test_project.rb')
  end
end

class Storage
  def initialize(filename)
    @filename = filename
  end
  
  def save(val)
    File.open(@filename, 'w') {|f| f << val}
  end
  
  def ouch!
    raise Problem
  end
  
  def ok_or_problem(ok)
    ok == :ok ? ok : raise(Problem)
  end
  
  def never_call_me
    :whatever
  end
end

class Problem < Exception;end
