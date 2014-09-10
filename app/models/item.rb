class Item
  include Neo4j::ActiveNode

  property :description
  id_property :id, auto: :uuid

  validates :description, presence: true

  has_many :both, :traits, rel_class: Dimension
  has_many :both, :instances, rel_class: Concrete
end
