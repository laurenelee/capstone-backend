class AgencyDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :age_minimum, :volunteer_type, :zip, :description
end
