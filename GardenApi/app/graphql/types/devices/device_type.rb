class Types::Devices::DeviceType < GraphQL::Schema::Object
  field :uuid, String, null: false
  field :id, ID, null: false
  field :plants, [Types::Plants::PlantType], null: true
  field :moisture_levels, [Types::AnnounceMessages::MoistureLevelType], null: true
  field :announce_messages, [Types::AnnounceMessages::AnnounceMessageType], null: true

  def plants
    object.plants
  end

  def moisture_levels
    object.moisture_levels
  end

  def announce_messages
    object.announce_messages
  end
end