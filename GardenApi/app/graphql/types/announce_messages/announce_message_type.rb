class Types::AnnounceMessages::AnnounceMessageType < GraphQL::Schema::Object
  field :message, String, null: false
  field :id, ID, null: false
  field :created_at, Types::Datetime::DateTimeType, null: false
end