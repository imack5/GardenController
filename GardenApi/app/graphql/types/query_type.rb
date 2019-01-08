module Types
  class QueryType < Types::BaseObject
    field :get_gardens, [Types::Gardens::GardenType], null: true,
    description: "Returns All Gardens"
    def get_gardens
      Garden.all
    end
  end
end
