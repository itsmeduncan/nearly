class Trait
  include Neo4j::ActiveNode

  property :description
  id_property :id, auto: :uuid

  has_many :both, :items, rel_class: Dimension
end
