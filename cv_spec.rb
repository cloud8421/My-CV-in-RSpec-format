$LOAD_PATH << './'
require 'cv'
require 'rspec'

describe "Claudio Ortolina" do
  
  describe "Personal data" do
    
    before(:each) do
      @claudio = Cv.new(:city => 'London', :job_desc => 'Developer')
    end

    it "moves to london in September" do
      @claudio.should respond_to(:city)
      @claudio.city.should eq('London')
    end

    it "is a freelance developer" do
      @claudio.should respond_to(:job_desc)
      @claudio.job_desc.should eq('Developer')
    end
    
  end
  
  describe "Programming Skills" do
    
    before(:each) do
      @claudio = Cv.new(:skills => %w(Javascript Coffeescript jQuery HTML5 SASS Sinatra Padrino Datamapper Rails RSpec Factory_Girl Guard Webrat))
    end
    
    it "knows and uses Javascript, Coffeescript and jQuery in the frontend" do
      @claudio.skills.should include('Javascript', 'Coffeescript', 'jQuery')
    end
    
    it "knows how to write decent and semantically valid HTML5 markup" do
      @claudio.skills.should include('HTML5')
    end
    
    it "knows how to get up and running a basic CSS layout using SASS - ugly but working" do
      @claudio.skills.should include('SASS')
    end
    
    it "knows a decent deal of Sinatra and Padrino with Datamapper" do
      @claudio.skills.should include('Sinatra', 'Padrino', 'Datamapper')
    end
    
    it "knows a decent deal of Rails" do
      @claudio.skills.should include('Rails')      
    end
    
    it "knows a decent deal of RSpec" do
      @claudio.skills.should include('RSpec')      
    end
    
    it "knows tools like Factory Girl, Guard, Webrat" do
      @claudio.skills.should include('Factory_Girl', 'Guard', 'Webrat')      
    end
    
    it "is learning advanced Raphael.js"
    
    it "is learning Backbone.js"
    
    it "is learning Cucumber"
    
    it "is learning Redis and Resque"
    
  end
  
  describe "Tools" do
    
    before(:each) do
      @claudio = Cv.new(:tools => %w(GIT Vim Textmate ZSH))
    end
    
    it "is comfortable with the command line and ZSH" do
      @claudio.tools.should include('ZSH')      
    end
    
    it "works using GIT and really likes it" do
      @claudio.tools.should include('GIT')
    end
    
    it "shifts between Textmate and VIM and knows he's not the only one" do
      @claudio.tools.should include('Vim', 'Textmate')
    end
    
  end
  
  describe "Language" do
    
    it "needs to work on the accent, but aside from that he knows english" do
      claudio = Cv.new(:languages => 'english')
      claudio.languages.should include('english')
    end
    
  end
  
end