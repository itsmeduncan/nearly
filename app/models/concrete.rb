class Concrete
  include Neo4j::ActiveRel

  from_class Item
  to_class Instance
  type 'concrete'
end
