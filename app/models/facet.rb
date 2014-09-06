class Facet
  include Neo4j::ActiveRel

  from_class Instance
  to_class Trait
  type 'facet'
end
