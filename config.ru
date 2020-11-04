require_relative "config/app"
$LOAD_PATH << File.join(__dir__, "app")

app = Quotes::App.new

# Standard Rack middleware works
# (see chapter 8)
use Rack::ContentType

app.route do
  match "", "q#index"
  match "sub-app",
    proc { [200, {}, ["Hello, sub-app!"]] }

  # default routes
  match ":controller/:id/:action"
  match ":controller", default: { "action" => "index" }
end

run app
