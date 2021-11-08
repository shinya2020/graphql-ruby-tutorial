module Mutations
  class UpdateLink < BaseMutation
    field :link, Types::LinkType, null: false

    argument :id, ID, required: true
    argument :description, String, required: true
    argument :url, String, required: true

    def resolve(**args)
      link = Link.find(args[:id])
      link.update(description: args[:description], url: args[:url])
      { link: link }
    end
  end
end
