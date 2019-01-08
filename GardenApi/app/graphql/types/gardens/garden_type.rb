class Types::Gardens::GardenType < GraphQL::Schema::Object
  field :name, String, null: false
  field :id, ID, null: false
  field :plants, [Types::Plants::PlantType], null: true
  field :devices, [Types::Devices::DeviceType], null: true

  def plants
    object.plants
  end

  def devices
    object.devices
  end
end