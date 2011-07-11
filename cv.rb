class Cv
  
  attr_accessor :city, :job_desc, :skills, :languages, :tools
  
  def initialize(args = {})   
    args.each { |key,value| send("#{key}=", value) }   
  end
  
end