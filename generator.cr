@[Link("igraph")]
@[Link("glpk")]
@[Link("stdarg")]
@[Link("c++")]
@[Include("stdarg.h", flags: "-Dlint -I/Library/Developer/CommandLineTools/usr/lib/clang/7.0.0/include")]
@[Include("igraph/igraph.h", prefix: %w(igraph_ IGRAPH_ IGraph))]
#@[Include("igraph/igraph_types.h", prefix: %w(igraph_ IGRAPH_ IGraph))]
#@[Include("igraph/igraph_constructors.h", prefix: %w(igraph_ IGRAPH_ IGraph))]
#@[Include("igraph/igraph_centrality.h", prefix: %w(igraph_ IGRAPH_ IGraph))]
#@[Include("igraph/igraph_structural.h", prefix: %w(igraph_ IGRAPH_ IGraph))]
lib IGraph

end
