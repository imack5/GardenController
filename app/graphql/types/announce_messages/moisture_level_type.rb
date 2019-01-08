class Types::AnnounceMessages::MoistureLevelType < GraphQL::Schema::Object
  field :reading, String, null: false
  field :id, ID, null: false
end