module Spec::Mocks::Methods
  def mock_instance(*args)
    class_eval do
      alias original_initialize initialize
      def initialize()end
    end

    instance = new
    should_receive(:new).with(*args).and_return(instance)

    class_eval do
      alias initialize original_initialize
      undef original_initialize
    end

    return instance
  end
  
  # Don't know if this sucks or not...
  
  # def stub_instance
  #   class_eval do
  #     alias original_initialize initialize
  #     def initialize()end
  #   end
  #   
  #   instance = new
  #   stub!(:new).and_return(instance)
  #   
  #   class_eval do
  #     alias initialize original_initialize
  #     undef original_initialize
  #   end
  # 
  #   return instance
  # end
end