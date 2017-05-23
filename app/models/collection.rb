# frozen_string_literal: true
class Collection < Valkyrie::Model
  attribute :id, Valkyrie::Types::ID.optional
  attribute :title, Valkyrie::Types::Set
  attribute :read_groups, Valkyrie::Types::Set
  attribute :read_users, Valkyrie::Types::Set
end
