class AgencyDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :age_minimum, :volunteer_type, :lat_loc, :long_loc, :description
end
