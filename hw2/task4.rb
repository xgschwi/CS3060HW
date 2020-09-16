class Tree
	attr_accessor :children, :node_name

	def initialize(hash)
		
		@node_name = hash.keys[0] #.first[0] is a substitute method

		inHash = {}
		inHash = hash.values[0] # Stores values of the next level of nodes

	        @children = []
       			       
	       inHash.each{|k, v| @children.push(Tree.new({k => v}))}
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

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


p "Visiting all"
ruby_tree.visit_all{|node| puts node.node_name}

