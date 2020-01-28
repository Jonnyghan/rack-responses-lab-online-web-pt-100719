require 'rack'
require 'pry'
# Something that responds to call, that's what Rack demands
class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
    binding.pry
    (Time.now.to_i < 12)?  ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
  end
end
 
