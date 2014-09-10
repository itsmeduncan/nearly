class Instance
  include Neo4j::ActiveNode

  id_property :id, auto: :uuid

  property :quantity, type: Integer, default: 0

  has_many :out, :traits, rel_class: Facet
  has_one :both, :item, rel_class: Concrete
end
