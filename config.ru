# tells Rack that our app lives in the file app.rb
# We have to explicitly state that our app file is located in the current directory (.) 
# because require normally looks only in standard system directories to find gems.
require './app'
run MyApp