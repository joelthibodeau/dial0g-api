class DialogSerializer < ActiveModel::Serializer
  attributes :id, :date, :entry_name, :rating, :notes
end
