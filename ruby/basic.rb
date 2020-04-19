# print 4 numbers at a time inside of an array with 16 numbers.
# 1. each
# 2. Enumerable.each_slice

arr = (1..16).to_a
arr.each do |a|
  print "#{a}#{a%4 == 0 ? "\n" : ","}"
end

arr.each_slice(4){|list| print list}
puts 

# hsh = {'uncle' => {'child 3' => {}, 'child 4' => {}}}.to_h
# puts hsh['uncle'].class

class Tree
  attr_accessor :children, :node_name

  def initialize(tree = {})
    @node_name = tree.keys[0]
    @children = tree[@node_name].collect do |k, v|
      Tree.new({k => v})
    end
  end

  def visit_all(&block)
    visit &block
    children.each{|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end
# ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])
ruby_tree = Tree.new({'uncle' => {'child 3' => {}, 'child 4' => {}}})

puts "Visit a node"
ruby_tree.visit do |node|
  puts node.node_name 
end

puts "Visiting entire tree"
ruby_tree.visit_all do |node|
  puts node.node_name 
end