# Task 4 written by Xavier Gschwind

class Tree
	# Accessor values
	attr_accessor :children, :node_name

	def initialize(hash)
		
		@node_name = hash.keys[0] #.first[0] is a substitute method that accomplishes the same purpose
					  # For hash.first[0] this finds the first key. key is at 0, value at 1.
		
		inHash = {} # Inner hash for next level of nodes
		inHash = hash.values[0] # Stores values of the next level of nodes (the value is the rest of the hash
					# structure) Could maybe use hash.first[1] for this, but I have not tried.

	        @children = [] # Stores the children from the nested hash
       			       
		inHash.each{|k, v| @children.push(Tree.new({k => v}))} # children stores Tree objects made from the inner part of the hash. Each child is its own Tree object with branches technically so continue to branch and move along tree

	       # This initializes several times over to where the children are made into new trees holding the next
	       # set of children in the hash. Each level of initialization captures each branch of the tree with
	       # inHash.each
	end

	# Visits first node, then all children nodes. Like in Ruby example in textbook
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	# Calls block to print the name of the node that has been reached
	def visit(&block)
		block.call self
	end
end

# Creates the Ruby Tree structure from a nested hash structure
ruby_tree = Tree.new ({'ggrandparent'  => {
		  'grandparent1'  =>
		  { 'parent1'  => {  'child1'  => { } } ,
        'parent2'  => {  'child2'  => { } ,  'child3'  => { } }
		  } ,
		   'grandparent2'  =>
		   {  'parent3'  => {  'child4'  => { } } ,
	 'parent4'  => {  'child5'  => { } ,  'child6'  => { } }
		   }
	 }
} )

# Prints all node_names for each node.
p "Visiting all"
ruby_tree.visit_all{|node| puts node.node_name}

