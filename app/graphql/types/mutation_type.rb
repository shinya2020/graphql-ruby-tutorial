module Types
  class MutationType < Types::BaseObject
    field :delete_link, mutation: Mutations::DeleteLink
    field :update_link, mutation: Mutations::UpdateLink
    field :create_link, mutation: Mutations::CreateLink
  end
end
