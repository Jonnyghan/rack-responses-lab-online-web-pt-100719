require 'rack'
 
# Something that responds to call, that's what Rack demands
class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
    Time.now.to_i < 12:00:00).zero? ?  ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
  end
end
 
run Application.new