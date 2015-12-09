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

v = IGraph::VectorT.new
result = 0
#igraph_diameter(&g, &result, 0, 0, 0, IGRAPH_UNDIRECTED, 1);
IGraph.diameter(pointerof(g), pointerof(result), nil, nil, nil, 0, 1)

puts result
