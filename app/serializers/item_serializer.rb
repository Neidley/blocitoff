class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :completed

  belongs_to :user
end
