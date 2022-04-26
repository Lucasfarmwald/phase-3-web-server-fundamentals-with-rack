require 'rack'
require 'pry'

class App
  def call(env)
    path = env["PATH_INFO"]
    if path == "/"
    [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == "/potato"
      [200, {"Content-Type" => "text/html"}, ["<p>Boil em, mash em</p>"]]
      elsif path =="/bugs"
        [200, {"Content-Type" => "text/html"}, ["<div>
        <select>
        <option>big bugs</option>
        <option>bigger bugs</option>
        <option>No bugs</option>
        </select>
        </div>"]]
    end
  end
end

run App.new