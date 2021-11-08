module Types
  class QueryType < Types::BaseObject
    field :all_links, [Types::LinkType], null: false
    def all_links
      Link.all
    end

    field :selected_link, Types::LinkType, null: false do
      argument :id, ID, required: true
    end
    def selected_link(id:)
      Link.find(id)
    end
  end
end
