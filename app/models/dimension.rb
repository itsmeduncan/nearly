class Dimension
  include Neo4j::ActiveRel

  from_class :any
  to_class :any
  type 'dimension'

  property :name, type: String
end
