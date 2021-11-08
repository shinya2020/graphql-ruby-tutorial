module Mutations
  class DeleteLink < BaseMutation
    field :link, Types::LinkType, null: false

    argument :id, ID, required: true

    def resolve(**args)
      link = Link.find(args[:id])
      link.destroy
      { link: link }
    end
  end
end
