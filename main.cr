require "./lib_igraph"

puts "Welcome"

g = IGraph::S.new
#v = IGraph::Vector.new stor_begin: 1, stor_end: 2, end_: 3
#v.stor_begin=1.0
#puts v
#IGraph.igraph_vector_init(v, 2)

x = IGraph.atlas(pointerof(g), 10)
puts g.to
puts g.from
puts g.oi

