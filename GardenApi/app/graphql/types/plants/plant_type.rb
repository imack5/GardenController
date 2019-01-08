class Types::Plants::PlantType < GraphQL::Schema::Object
  field :name, String, null: false
  field :id, ID, null: false
  field :category, Types::Categories::CategoryType, null: false

  def category
    object.category
  end
end