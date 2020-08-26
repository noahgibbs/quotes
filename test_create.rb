#!/usr/bin/env ruby

require "r00lz"

class MyTable < SQLModel; end

# Create row
obj = MyTable.create "title" => "Yo!", "body" => "Something happened"
puts "New object ID: #{obj.id}"
obj2 = MyTable.find(obj.id)
puts "News: #{obj2.title} #{obj2.body}"
