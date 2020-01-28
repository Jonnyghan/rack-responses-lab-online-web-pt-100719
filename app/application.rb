class Application
  
  def call(env)
    thing= Rack::Response.new 
    time = Time.now.hour 
    
    if time <= 12 
      thing.write "Good Morning!"
    else 
      thing.write "Good Afternoon!"
    end
    
    thing.finish
  end
  
end