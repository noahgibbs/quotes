require_relative "config/app"
$LOAD_PATH << File.join(__dir__, "app")
run Quotes::App.new
