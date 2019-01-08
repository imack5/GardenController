class Types::Categories::CategoryType < GraphQL::Schema::Object
  field :name, String, null: false
  field :moisture_level, String, null: false
  field :id, ID, null: false
end